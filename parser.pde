import java.util.Map;
import java.util.Arrays;

void parseData() {
  JSONObject json = new JSONObject();
  ArrayList<String> words = new ArrayList<String>();
  Map<String, Integer> map = new HashMap<String, Integer>();
  String[] wordArray = new String[0];
  String lines[] = loadStrings("data/"+file+".txt");
  int wordCount = 0;

  for (String line : lines) {  
    wordArray = line.split("\\s+");
    wordCount += wordArray.length;
    for (String word : wordArray) {
      words.add(word);
    }
  }

  for (String w : words) {
    Integer n = map.get(w);
    n = (n == null) ? 1 : ++n;
    map.put(w, n);
  }


  int average = words.size()/lines.length;

  JSONArray jsonWordArray = new JSONArray(); 
  int id=0;
  for (Map.Entry<String, Integer> entry : map.entrySet()) {
    JSONObject paragraph = new JSONObject();
    if (!entry.getKey().equals("")) {
      paragraph.setString("word", entry.getKey().toString());
      paragraph.setInt("count", entry.getValue());
      paragraph.setInt("line", words.indexOf(entry.getKey().toString())/average );
      paragraph.setInt("position", words.indexOf(entry.getKey().toString()));
      jsonWordArray.setJSONObject(id++, paragraph);
    }
  }

  json.setInt("lines", lines.length);
  json.setInt("wordCount", wordCount);
  json.setJSONArray("words", jsonWordArray);

  saveJSONObject(json, "data/"+file+".json");
}