module PlayerSpec (spec) where

import Test.Hspec
import Player
import Samples
import Data.Map (fromList)

spec = do 
    describe "makePlayer" $
        it "makes a player at the first place in the graph" $
            makePlayer sampleGraph `shouldBe` samplePlayer

    describe "changePlayer" $
        it "changes one thing about the player" $
            pendingWith "laziness"

    describe "killPlayer" $
        it "kills the player" $
            killPlayer samplePlayer `shouldBe`
                samplePlayer { playerInfo = fromList [("description", "As lovely as ever."),
                            ("Alive", "False"), ("Won", "False"), ("score", "0")]} 
        
    describe "movePlayer" $
        it "moves the player" $
            movePlayer 2 samplePlayer `shouldBe`
                samplePlayer { currentPlace = 2 }
