/**
  * Created by manmeetsinghsaluja on 18/5/16.
  */
class Phrase(str: String) {
  def wordCount(): Map[String, Integer] ={
    val arr = str.split("[^\\w']").filter(_.length> 0).map(_.toLowerCase)
    var m:Map[String,Integer] = Map()
    for(c <- arr){
      if(!m.contains(c)){
        m += (c -> arr.count(_ == c))
      }
    }
    return m
  }
}
