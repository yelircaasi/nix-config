# Keybindings

## Format

* Keybindings are recorded in JSON format, with keys corresponding to commands and sequences of objects containing one of the keys `deadkey`, `modifier`, `set`, and `sequence`, where the value corresponding to each is a sequence even if it contains only one key.
* In the command "ctrl + c", for example, the modifier is "ctrl" and the set is "c".
* Key categories:
* deadkey: modifies the next key, but may first be released (also referred to as a 'sticky' key)
* modifier: also modifies the next key, but must be held until after the net key has been pressed. If there are multiple (such as "ctrl + k"), they may be pressed in sequence with overlap or sequentially.
* set: one or more keys to be pressed simultaneously; the order does not matter as long as there is an overlap
* sequence: multiple keys to be pressed in a certain order
* Scope categories:
* global
* app
* Mode is an open class, only needed for `scope`: `app`. Examples:
* visual (vim)
* normal (vim)
* fullscreen
* recording
* This format is unambiguous and expressive enough to describe all keyboard shortcuts I need.
