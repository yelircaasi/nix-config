import getpass
import hashlib


def get_cumsums() -> list[int]:
    def cumsum(int_str: str) -> int:
        return sum(map(lambda i: int(i, base=16) + 1, int_str))

    password = getpass.getpass("Password: ")
    sha256_hash = hashlib.sha256()
    sha256_hash.update(password.encode("utf-8"))
    hashdigest = sha256_hash.hexdigest()
    rehash = hashdigest[int(hashdigest[7])].join(3 * [hashdigest])
    cumsums = list(map(cumsum, (map(lambda i: rehash[: i + 1], range(114)))))
    return cumsums


# import random
# import string
# import time
#
#
# def make_cryptstring() -> str:
#     secret = getpass.getpass("Secret: ").lower()
#     assert len(secret) == 114
#     random.seed(hash(time.time()))
#     random_string = [
#         random.choice(string.ascii_lowercase + string.digits) for i in range(1824)
#     ]
#     cumsums = get_cumsums()
#     for i in range(114):
#         random_string[cumsums[i]] = secret[i]
#     return "".join(random_string)
#
#
# CRYPTSTRING = make_cryptstring()
# print(CRYPTSTRING)

CRYPTSTRING = "o0m3m5cjluhvlk6sccy70iq4hw1dwwdsrw5bl9gl7gt5aevtws8p8tfarftvohgp39bgrhpa9w2lwrkplh04ebyc8oo7n8l4b3c0njacoxnt0sco1phgwvvo4i9swxr9a0xcfaawhg8ye0grge4fmwsuo48ka17h5kj4oec28lv2prd6iemkfn9vkfsyalcjjd33xm344sf26tbx2n63ld7v5tpddti2ku0amhdq8rc5e6vs0w99l6wh65k4k4lomiiq4w8acd01f6hvpufgjo76uy4zagr4ei0w2obe2mkhxpzaeyn36cviergd2z5zzbcjozddq5d5b2t41458knuw7by062idvyaqz4cj3iiflmhpce44pk6sm8gnl8z1kunyngqw7phhcq7hisslr3x27m69mht3pu5ujvsurhfgspu7u57lmsxr0aucuw5yq3an5riqcipr2hk6webpellfe00oplgizuhhhd4kbzw33hnj8zhvftl59hgh7j309nnrnzopa3kdmj8jqqmvsm993571foekz6mj0rl3w079o8jz44354etar8p9dgr1xm23p72xgafklr1fafq2a5dsv4zq3dedq8g6mm0zdwv2zrjge3x6xspvosynawrsuzbf3haer90fpjou6vy2ffzfi3g43ffaqapse0j5w47vzkanok8r0ab2lc2yikt95e64my76780fajvryjp0xtq8o39pq8jirvcuwrlxbbcycvoxkglqyf9pp2cijunw4uksg1wtl3yciakxtjdomykgsd4j0x4nj75sf5vf5x72i2nogxt9cnsr6ni0fzvrqt953qv7pzgts5sorh7djkytsq8nbeqr0in5zz8mqwer4ptqo358wwkic60r5imkh5yqvlrwa7gsc8a8qyuacb5591r02bi9bvp2xpy88fhq9jbeku88lzive27cy48a6nh1bct1nn01ebac7e2ngp4upcnb8dgcft0imz50nxmdwdsf41dp4j1je8uuzlkurohosp82l4zd3q9paeksybfq4pgsonw4ob5pvkf8a5xcd07i77pww50ymuotjuh20sz59v4cwzl93et3cenkmbguvemn5eg6y4tepsnzuvsgkunhxudggz951x1npekbjzadep3six9vivytk2jn2bg1pc5o48pvp09hwa3r1a38sj7svhkx8m0hss295c8k9k63qpg4rtnwckv75hdmh2cvtmo0paiwfk8pngqy5a6dlkt0bd4lx783qs6jhxnbzzi8eoo4mzn7aieryb3xp2zz8wl54mkoxldj4uifxfr7iqsrstmqtgpeblgw396u007p0e8rgda5bxy4zk4k21rvy84bl21fmp057ikbaspb765po4g24fjrwn1cdnwwhc3znvwneeicl0l6xsb5enqlt3e1b7qr7c6i0pqulctjo895gvjtv3ogunm1h1tcugahoqemljoj3w5glzjzwdp976c5vus5y6zxtd19qqr9nq1iapp5vwp10oknchxadhw86i86ja3nsfda03zij9oomqwnbrbbskob6utlwhivchqigin1mw2xdpw6z9ac0j3myjgxbz6ia8j9gy6xc8ofqhutgvxekimf1vylmxyqi748p5qqeqvbitw11alzqzlelcvynmnl8td8qgkvhcn15ud94am9e96s28dazhwdda6avo7t842qtn222zjtma7yjmc47lbdvsatb91a7x2jols5kon79hog6p4nvkh7v4z9jhvbf7k28871nfe6cl81ze62rrk84chen1vevctavhbk485j"


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
