module NotJson

import CoolCollections.SimpleMap

data Json = JNull | JObject (SimpleMap Json) | JArray (List Json) | JString String | JNumber Nat

export
parse : String -> Maybe Json
parse s = Just $ JObject $ (insert "Username" (JString "Kiiya") $ insert "Password" (JNumber 1234) $ new)

