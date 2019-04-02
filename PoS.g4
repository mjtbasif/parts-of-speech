grammar PoS;

sentence: subject verb preposition? adverb? object (preposition object)? adverb? punctuation?
	|sentence conjunction? sentence punctuation
	|(aux_verb| wh_question) aux_verb? subject (main_verb object)? punctuation
	|sentence sentence (preposition subject)?
	| aux_verb subject object punctuation?
	|aux_verb subject ing_verb preposition object punctuation
	|aux_verb subject verb object punctuation?
	|sentence  conjunction sentence+ punctuation?
	|verb preposition? (object|pronoun) 
	|subject verb object preposition adjective* noun punctuation?
	|subject verb preposition verb object punctuation
	|wh_question verb subject (verb preposition verb)? punctuation?
	|subject object sentence?
	;

subject	: article? (adjective* noun | pronoun)
	;

object	:article? adjective* noun*
	| obj_pronoun
	;

verb	: (main_verb | aux_verb)
	| aux_verb ing_verb
	| (aux_future | mod_verb) main_verb
	| aux_verb past_participle
	|past_participle
	;

article	:
	'a' | 'an' | 'the'| 'A' | 'An' | 'The'
	;
aux_verb:  'am' | 'is' | 'are'|'was' | 'were' | 'have' | 'has'|'will' | 'be' | 'Am' | 'Is' | 'Are'|'Was' | 'Were' | 'Have' | 'Has'|'Will' | 'Be'
	;

aux_future: 'will' | 'Will' 
	;
mod_verb: 'can' | 'could' | 'may' | 'might' | 'need to' | 'must' 
	;

main_verb	: 
	'go' | 'eat' | 'have' | 'do'| 'say'| 'play' | 'get'| 'make'| 'know'| 'take'| 'see'| 'come'| 'think'| 'has'|
	'look'| 'want'| 'give'| 'use'| 'find'| 'tell'| 'ask'| 'work'| 'seem'| 'feel'| 'smile' | 'love' | 'try'|'wait'|'went'|'meet'|'see'|'saw'|'be' |'pass'
	;
ing_verb: 'going' | 'eating' | 'having' | 'doing'| 'saying'| 'getting'| 'making'| 'knowing'| 'taking'| 'seeing'| 'coming'| 'thinking'| 
	'looking'| 'wanting'| 'giving'| 'using'| 'finding'| 'telling'| 'asking'| 'working'| 'seeming'| 'feeling'| 'trying'|'playing'|'waiting'|'walking'|'reading'
	;

past_participle : 'eaten' | 'had' | 'done'| 'said'| 'got'| 'made'| 'known'| 'taken'| 'seen'| 'come'| 'thought'|
	'looked'| 'wanted'| 'given'| 'used'| 'found'| 'told'| 'asked'| 'worked'| 'felt'| 'tried'|'waited'|'gone'|'met'|'been' 
	;
noun	: 
	  'student' | 'almighty' | 'Allah' | 'God' |'Almighty'| 'Alexandar' | 'King' | 'king' | 'rice'|'school' | 'time' | 'person' | 'year' | 'smile' | 'way' | 'day' | 'thing' | 'man' | 'world' | 'life' | 'hand' |'book'|'EWU'|
	 'part' | 'child' | 'eye' | 'woman' | 'place' | 'work' | 'week' | 'case' | 'point' | 'government' | 'problem' | 'boy' | 'pen'| 'tea'|'friend'|'football'|'field'|'shirt'|'people'|
	'grade' |'university'|'street' | 'home' | 'shop' | 'engineer' | 'course' | 'study' | 'compiler' |'class' | 'presentation' | 'Student' | 'Rice'|'School' | 'Time' | 'Person' | 'Year' | 'Way' | 'Day' | 'Thing' | 'Man' | 'World' | 'Life' | 'Hand' |'Book'|'EWU'|
	 'Part' | 'Child' | 'Eye' | 'Woman' | 'Place' | 'Work' | 'Week' | 'Case' | 'Point' | 'Tanha' | 'Asif' |'girl' | 'boy' | 'love' | 'Government' | 'Problem' | 'Boy' | 'Pen'| 'Tea'|'Friend'|'Football'|'Field'|'Shirt'|'People'|
	'Grade' |'University'|'Street' | 'Home' | 'Shop' | 'Engineer' | 'Course' | 'Study' | 'Compiler' |'Class' | 'Presentation'
	;
pronoun	: 'i' | 'you' | 'we' | 'they' |'he' | 'it' | 'this' |'there' | 'I' | 'You' | 'We' | 'They' |'He' | 'It' | 'This' |'There'
	;

obj_pronoun: 'me' | 'them' | 'us' | 'you' | 'him' | 'it' | 'there' |'that' | 'It' | 'There' | 'That'
	;

adjective: 'good' | 'new' | 'almighty' | 'sentence'| 'last'| 'long'| 'great'| 'little'| 'own'| 'other'| 'old'| 'right'| 'big'| 'high'| 'different'| 'small'| 'large'| 'important'| 'bad'| 'same'|'very'
	   |'young' | 'red' | 'green' | 'lovely' | 'yellow' | 'white' | 'blue' | 'favourite' | 'black'|'best'
	| possessive | 'amazing' | 'noun'| 'Good' | 'New' | 'Sentence'| 'Last'| 'Long'| 'Great'| 'Little'| 'Own'| 'Other'| 'Old'| 'Right'| 'Big'| 'High'| 'Different'| 'Small'| 'Large'| 'Important'| 'Bad'| 'Same'|'Very'
	   |'young' | 'red' | 'green' | 'yellow' | 'white' | 'blue' | 'favourite' | 'black'|'best'
	| 'Possessive' | 'Amazing' | 'Noun'
	;
possessive	: 'my' | 'your' | 'their' | 'his' | 'her' | 'its' | 'our' | 'My' | 'Your' | 'Their' | 'His' | 'Her' | 'Its' | 'Our'
		;

adverb	: 'slowly' | 'up'|'so'|'out'|'just'|'now'|'how'|'then'|'more'|'also'|'here'|'well'|'only'|'very'|'even'|'back'|'there'|'down'|
	'still'|'in'|'as'|'too'|'when'|'never'|'really'|'most'|'alone'| 'yesterday' |'which' | 'costly'
	;

preposition: 'to' | 'in' | 'from' | 'about' | 'of' | 'for' | 'with'| 'on' | 'at' |
	'by' | 'after' | 'To' | 'In' | 'From' | 'About' | 'Of' | 'For' | 'With'| 'On' | 'At' |'By' | 'After' 
	;

conjunction	: 'and' | 'but' | 'or' | 'when' | 'And' | 'But' | 'Or' | 'When'
		;

wh_question	: 'what' | 'how' | 'when' | 'where' |'which' |'who'| 'whom' | 'which' | 'What' | 'How' | 'When' | 'Where' |'Which' | 'Who' | 'Whom'

		;

punctuation	: '?' | '.' |'!'| ';'| '-'
		;

WS : [ \t\r\n]+ -> skip ; // skip spaces, tabs, newlines