/**
  * Created by manmeetsinghsaluja on 17/5/16.
  */
object Hamming {
  def compute(str1: String, str2: String): Int ={
    var diff = 0
    if(str1.length != str2.length){
      throw new IllegalArgumentException("Length of both strings should be equal")
    }
    var counter = 0
    for (c <- str1){
      if(!c.equals(str2.charAt(counter))) diff += 1
      counter += 1
    }

    return diff
  }
}
