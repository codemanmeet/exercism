/**
  * Created by manmeetsinghsaluja on 17/5/16.
  */
class Bob {
  val WHATEVER = "Whatever."
  val SURE = "Sure."
  val FINE = "Fine. Be that way!"
  val CHILL_OUT = "Whoa, chill out!"
  def hey(str: String): String = {
    if(areAllLettersCapital(str)){
      return CHILL_OUT
    }
    if(str.trim == ""){
      return FINE
    }
    if(str.takeRight(1) == "?"){
      return SURE
    }
    return WHATEVER

  }

  def areAllLettersCapital(str: String): Boolean = {
    val allLetters = ('a' to 'z') ++ ('A' to 'Z')
    val strWithAlpha = str.filter(allLetters.contains)
    return (strWithAlpha.forall(_.isUpper) && strWithAlpha.length > 0)
  }
}