exports.getObject = (id, process = true) ->
	if id is null
		id = Math.floor(Math.random() * wordList.length)
	word = wordList[id][1] # get word
	if process
		word = word.replace(/\s/g,'') # remove spaces
		word = word.toLowerCase() # force lower case
	return {
		wordId: id
		word: word
		prefix: wordList[id][2]
	}

exports.getWord = (id, process = true) ->
	if id is null
		id = Math.floor(Math.random() * wordList.length)
	word = wordList[id][1] # get word
	if process
		word = word.replace(/\s/g,'') # remove spaces
		word = word.toLowerCase() # force lower case
	return word

exports.getPrefix = (id) ->
	return wordList[id][2]

exports.getFields = (id) ->
	word = wordList[id][1] # get word
	return (i.length for i in word.split(" "))

# id, word, prefix, difficulty, active
# last two not yet implemented
wordList = [
	[0, "rabbit", "a", 1, true],
	[1, "strawberry", "a", 1, true],
	[2, "crazy", "", 1, true],
	[3, "painting", "a", 1, true],
	[4, "fence", "a", 1, true],
	[5, "horse", "a", 1, true],
	[6, "door", "a", 1, true],
	[7, "song", "a", 1, true],
	[8, "trip", "", 1, true],
	[9, "backbone", "a", 1, true],
	[10, "bomb", "a", 1, true],
	[11, "treasure", "a", 1, true],
	[12, "garbage", "a", 1, true],
	[13, "park", "a", 1, true],
	[14, "pirate", "a", 1, true],
	[15, "ski", "a", 1, true],
	[16, "state", "a", 1, true],
	[17, "whistle", "a", 1, true],
	[18, "palace", "a", 1, true],
	[19, "baseball", "a", 1, true],
	[20, "coal", "", 1, true],
	[21, "queen", "a", 1, true],
	[22, "dominoes", "", 1, true],
	[23, "photograph", "a", 1, true],
	[24, "computer", "a", 1, true],
	[25, "hockey", "a", 1, true],
	[26, "aircraft", "an", 1, true],
	[27, "hot", "", 1, true],
	[28, "dog", "a", 1, true],
	[29, "salt", "", 1, true],
	[30, "pepper", "", 1, true],
	[31, "key", "a", 1, true],
	[32, "iPad", "an", 1, true],
	[33, "frog", "a", 1, true],
	[34, "lawn mower", "a", 1, true],
	[35, "mattress", "a", 1, true],
	[36, "cake", "a", 1, true],
	[37, "circus", "a", 1, true],
	[38, "battery", "a", 1, true],
	[39, "mailman", "a", 1, true],
	[40, "cowboy", "a", 1, true],
	[41, "password", "a", 1, true],
	[42, "bicycle", "a", 1, true],
	[43, "skate", "a", 1, true],
	[44, "electricity", "", 1, true],
	[45, "lightsaber", "a", 1, true],
	[46, "thief", "a", 1, true],
	[47, "teapot", "a", 1, true],
	[48, "spring", "", 1, true],
	[49, "nature", "", 1, true],
	[50, "shallow", "", 1, true],
	[51, "toast", "a", 1, true],
	[52, "outside", "", 1, true],
	[53, "America", "", 1, true],
	[54, "man", "a", 1, true],
	[55, "bowtie", "a", 1, true],
	[56, "half", "", 1, true],
	[57, "spare", "", 1, true],
	[58, "wax", "", 1, true],
	[59, "lightbulb", "a", 1, true],
	[60, "chicken", "a", 1, true],
	[61, "music", "", 1, true],
	[62, "sailboat", "a", 1, true],
	[63, "popsicle", "a", 1, true],
	[64, "brain", "a", 1, true],
	[65, "birthday", "a", 1, true],
	[66, "skirt", "a", 1, true],
	[67, "knee", "a", 1, true],
	[68, "pineapple", "a", 1, true],
	[69, "sprinkler", "a", 1, true],
	[70, "money", "a", 1, true],
	[71, "lighthouse", "a", 1, true],
	[72, "doormat", "a", 1, true],
	[73, "face", "a", 1, true],
	[74, "flute", "a", 1, true],
	[75, "rug", "a", 1, true],
	[76, "snowball", "a", 1, true],
	[77, "purse", "a", 1, true],
	[78, "owl", "an", 1, true],
	[79, "gate", "a", 1, true],
	[80, "suitcase", "a", 1, true],
	[81, "stomach", "a", 1, true],
	[82, "doghouse", "a", 1, true],
	[83, "bathroom", "a", 1, true],
	[84, "peach", "a", 1, true],
	[85, "newspaper", "a", 1, true],
	[86, "hook", "a", 1, true],
	[87, "school", "a", 1, true],
	[88, "beaver", "a", 1, true],
	[89, "fries", "", 1, true],
	[90, "beehive", "a", 1, true],
	[91, "beach", "a", 1, true],
	[92, "artist", "an", 1, true],
	[93, "flagpole", "a", 1, true],
	[94, "camera", "a", 1, true],
	[95, "hairdryer", "a", 1, true],
	[96, "mushroom", "a", 1, true],
	[97, "toe", "a", 1, true],
	[98, "pretzel", "a", 1, true],
	[99, "tv", "a", 1, true],
	[100, "jeans", "", 1, true],
	[101, "chalk", "a", 1, true],
	[102, "dollar", "a", 1, true],
	[103, "soda", "a", 1, true],
	[104, "chin", "a", 1, true],
	[105, "swing", "a", 1, true],
	[106, "garden", "a", 1, true],
	[107, "ticket", "a", 1, true],
	[108, "boot", "a", 1, true],
	[109, "cello", "a", 1, true],
	[110, "rain", "", 1, true],
	[111, "clam", "a", 1, true],
	[112, "treehouse", "a", 1, true],
	[113, "rocket", "a", 1, true],
	[114, "fur", "a", 1, true],
	[115, "fish", "a", 1, true],
	[116, "rainbow", "a", 1, true],
	[117, "happy", "", 1, true],
	[118, "fist", "a", 1, true],
	[119, "base", "a", 1, true],
	[120, "storm", "a", 1, true],
	[121, "mitten", "a", 1, true],
	[122, "nail", "a", 1, true],
	[123, "sheep", "a", 1, true],
	[124, "traffic light", "a", 1, true],
	[125, "coconut", "a", 1, true],
	[126, "helmet", "a", 1, true],
	[127, "ring", "a", 1, true],
	[128, "seesaw", "a", 1, true],
	[129, "plate", "a", 1, true],
	[130, "hammer", "a", 1, true],
	[131, "bell", "a", 1, true],
	[132, "street", "", 1, true],
	[133, "roof", "a", 1, true],
	[134, "cheek", "a", 1, true],
	[135, "phone", "a", 1, true],
	[136, "barn", "a", 1, true],
	[137, "snowflake", "a", 1, true],
	[138, "flashlight", "a", 1, true],
	[139, "muffin", "a", 1, true],
	[140, "sunflower", "a", 1, true],
	[141, "tophat", "a", 1, true],
	[142, "pool", "a", 1, true],
	[143, "tusk", "a", 1, true],
	[144, "radish", "a", 1, true],
	[145, "peanut", "a", 1, true],
	[146, "chair", "a", 1, true],
	[147, "poodle", "a", 1, true],
	[148, "potato", "a", 1, true],
	[149, "shark", "a", 1, true],
	[150, "jaws", "a", 1, true],
	[151, "waist", "a", 1, true],
	[152, "spoon", "a", 1, true],
	[153, "bottle", "a", 1, true],
	[154, "mail", "", 1, true],
	[155, "crab", "a", 1, true],
	[156, "ice", "", 1, true],
	[157, "lawn", "a", 1, true],
	[158, "bubble", "a", 1, true],
	[159, "pencil", "a", 1, true],
	[160, "hamburger", "a", 1, true],
	[161, "corner", "a", 1, true],
	[162, "popcorn", "", 1, true],
	[163, "seastar", "a", 1, true],
	[164, "octopus", "a", 1, true],
	[165, "desk", "an", 1, true],
	[166, "pie", "a", 1, true]
]