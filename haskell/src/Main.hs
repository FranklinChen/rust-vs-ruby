{-# LANGUAGE OverloadedStrings #-}

import Network.Wai (Application, responseLBS)
import Network.HTTP.Types (status200)
import Network.Wai.Handler.Warp (run)
import Data.Aeson (encode, object, (.=))
import Data.Text (Text)

main :: IO ()
main = run 9292 app

app :: Application
app _ respond = respond $
  responseLBS
    status200
    [("Content-Type", "application/json")] $
    encode $
    object [ "first_name" .= ("Hello" :: Text)
           , "last_name" .= ("World" :: Text)
           ]
