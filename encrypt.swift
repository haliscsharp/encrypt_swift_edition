func encrypt( text:String, shift: Int ) -> String{

var textCharArray:[Character] = Array( text.characters)

let alphabet = Array("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ !".characters"")
let offset = alphabet.count

for i in 0 ..< text.character.count{
  let oldChar = textCharArray[ i ]
  let oldCharIdx= alphabet.index(of:oldChar)

  let oldCharIdxUnwrapped =oldCharIdx!
  let newCharIdx=(oldCharIdxUnwrapped + shift + offset)%offset

  let newChar = alphabet[newCharIdx]

  textCharArray[i]=newChar
}
return String(textCharArray)
}

main(){
  let encryptedtext=encrypt("Halis",shift:2)
  print(encryptedtext)
}
