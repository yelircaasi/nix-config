import getpass
import hashlib


def get_cumsums() -> list[int]:
    def cumsum(int_str: str) -> int:
        return sum(map(lambda i: int(i, base=16) + 1, int_str))

    password = getpass.getpass("Password: ")
    sha256_hash = hashlib.sha256()
    sha256_hash.update(password.encode("utf-8"))
    hashdigest = sha256_hash.hexdigest()
    print(password)
    print(hashdigest)
    rehash = hashdigest[int(hashdigest[7])].join(3 * [hashdigest])
    print(rehash)
    cumsums = list(map(cumsum, (map(lambda i: rehash[: i + 1], range(114)))))
    return cumsums


import random
import string
import time


def make_cryptstring() -> str:
    secret = getpass.getpass("Secret: ").lower()
    assert len(secret) == 114
    random.seed(hash(time.time()))
    random_string = [
        random.choice(string.ascii_lowercase + string.digits) for i in range(1824)
    ]
    cumsums = get_cumsums()
    for i in range(114):
        random_string[cumsums[i]] = secret[i]
    return "".join(random_string)


CRYPTSTRING = make_cryptstring()
print(CRYPTSTRING)
#
# CRYPTSTRING = "27bwqdudakox1uc1x405wkwg32t6o8g1dp83n26o0b53inapy79msu6w5kx636g3hqr44davxh5vd2003ev2cx2y8qg76h5tqszpldrwf043sfsh7qn44pewx012oap7rkti5use7l2jfx34z2cdyo469eyyy3rlt1v05dclsin2us7xsdet5w4ujxpubwq0bq1w2lqa8g5k2hthkd6bgsgeogszn75j7ujo0ntma1kk9rhyc0sq7z83yr2wl3234ddr0a5evq3n5p78jayod2dmcyihdqz3mpv7ror2v03n3h2394s2xre1kcjq5j9m4a1cr14jn7tj8j6nhyko2ep4uiuy9kn3u3qtsvsc3aoydud5h22xq999te5ln9gehtt3lqb1jb3r7yd5c83ctyaa9227fap8f03qz66enb2f5w3y3jacconkgleab9op8ouubiajo9qayr1b1i5p36ca3r0ozqx07qpqy1te3q1jfmgo913jldlgqzqw85p5xcjjn15ejbsvp0wx02ynmjaxji2tlxucg1ftnwyw9mz6nizowe346u9lcf8q5xbqrs9x5rs2maxqny7y194s7js0wwrpbt88ohmjp9wsy0jn9ykaps17gskskthaw4tnw5dmtkgjjnl108m9s793r3h17kzbnbxqga8prds4zeihcgs0dpz707ne7ma1krno0pi9gnp7o1fx37qk48adzahrojtap9zerdj3cizbr7v8fszcgp16w9hs6imjm03v4gz9ovyteqc1y09atmn7nrutsbcaizyhzmhgeiynnobvy5l4f4t5cs2b79q6lz7bjltw2r5iuxrhifyqh6bxxyemzktbh50zjk0blmgnbj1r1mhnjdrdoqhn1vsg17n05vgvnwd0pj4rpqas0zsbmmx2pbu6oz6rvnayg2e0idsmx7h6us84ybwlfnwuqeoo71nlh7858zeqmysl6ohit4r0rgb72w0371z4ywl5e0lfxafywf19pfm0ga8ja2wdmpvo"


def write_secrets() -> None:
    cumsums = get_cumsums()
    print(cumsums)
    secret_substance = "".join([CRYPTSTRING[i] for i in cumsums])
    secret = f"""# created: 2024-03-02T14:08:53+01:00
# public key: age15{secret_substance[:57]}
AGE-SECRET-KEY-15{secret_substance[57:].upper()}"""
    with open("/home/isaac/.config/sops/age/keys.txt", "w", encoding="utf-8") as f:
        f.write(secret)


if __name__ == "__main__":
    write_secrets()
