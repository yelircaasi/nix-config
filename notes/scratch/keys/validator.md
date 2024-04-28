# Keybindings Validator

## Algorithm

* 1. Export Nix declaration to JSON
* 2. Read and parse JSON
* 3. Create a keybindings tree, using a dummy code `blank` or similar to mark the
   gap between chords or the end of a keybind -> `blank` will then trigger a
   conflict if it has any sibling nodes in the tree, unless the sibling occupies a
   mutually-exclusive scope
* 4. Detect and flag any conflicts
* 5. Score each keybind for ergonomicity
* 6. Compare ergonomicity to indicated frequency of use (-> create separate file
   to record approximate expected frequency per command; default infrequent)
* 7. Show ergonomicity-frequency mismatches and create recommendations for improvements
* 8. Show which keybinds are mnemonic (also record in meta-file which keys are
   desired for mnemonicity) and recommend available mnemonic keybinds
* 9. From tags supplied to actions / commands, and also from the names and descriptions,
   group together common commands and use heuristics to evaluate the coherence of the
   overall keybindings
* 9. Create nicely-formatted documentation of all keybinds, both by application / scope
   and by keys

## Roadmap

* Focus on 1-7 first; worry about semantics later (if at all).
* Use aeson -> [tutorial](https://www.schoolofhaskell.com/school/starting-with-haskell/libraries-and-frameworks/text-manipulation/json)

```
* To read JSON data into your Haskell program with the specific structure you've described, you can use the aeson library, which is a widely used library for working with JSON in Haskell.
* Assuming you have the following Haskell data type representing your JSON structure:

{-# LANGUAGE DeriveGeneric #-}

{-# LANGUAGE OverloadedStrings #-}
* import GHC.Generics
* import Data.Aeson
* import Data.Text (Text)
* data Chord = Chord
  { mod1 :: Maybe Text
  , base1 :: Text
  } deriving (Generic, Show)
* data AppData = AppData
  { action :: Text
  , chords :: [Chord]
  } deriving (Generic, Show)
* instance FromJSON Chord
* instance FromJSON AppData
* Now, you can use the decode function from Data.Aeson to parse the JSON data into your Haskell data types:
* import qualified Data.ByteString.Lazy as BS
* import Data.Maybe (catMaybes)
* main :: IO ()
* main = do
  jsonContent <- BS.readFile "yourFile.json"
  case decode jsonContent of* Nothing -> putStrLn "Failed to parse JSON data."* Just appData -> processAppData appData
* processAppData :: AppData -> IO ()
* processAppData appData = do
  putStrLn $ "Action: " ++ show (action appData)
  putStrLn "Chords:"
  mapM_ printChord (catMaybes $ chords appData)
* printChord :: Chord -> IO ()
* printChord chord = putStrLn $ "  Mod1: " ++ show (mod1 chord) ++ ", Base1: " ++ show (base1 chord)
* Make sure to replace "yourFile.json" with the actual path to your JSON file.
* This example assumes that each "chord" object must have at least one of "mod1" and "base1," and it prints the parsed data to the console. You can modify processAppData to perform further processing based on your application's needs.

```
