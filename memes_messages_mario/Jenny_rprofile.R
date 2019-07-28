# personalise your welcome message

#start with a quote from The Good Place (requires goodshirt package) spoken by a random ASCII animal (requires cowsay package)


if (interactive() && require("goodshirt", quietly = TRUE)) {
  goodshirt::soul_squad()
  cowsay::say(as.character(soul_squad()),
              by = "random",
              what_color = crayon::blue$bold,
              by_color = crayon::blue$bold)
  
  # then get some random praise to get you started for the day (requires the praise package) 
  
  message("\nHappy Coding Jen!", "💜")
  message(praise::praise())
 
  
}

