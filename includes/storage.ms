# returns the base key (_key.'.players')
proc(_key,
	return('aczchef.primedbans')
)

# gets a players total offense in the form of an array
proc(_get_poffenses, @p = player(),
	@poffenses = get_value(_key(). '.players.' .@p. '.offenses')
	return(@poffesnses)
)

# adds an offense to a players total offenses
proc(_add_poffense, @poffense, @p = player(),
	# @offenses = array()
	# if(has_value(_key(). '.players.' .@p. '.offenses')) {
	# 	@offenses = get_value(_key(). '.players.' .@p. '.offenses')
	#}
	# array_push(@offenses, @poffense)
	# store_value('aczchef.primedbans.players.' .@p. '.offenses', @offenses)
)

# clears a players offenses
proc(_clear_poffenses, @p - player(),
	clear_value(_key(). '.players.' .@p. '.offenses')
)