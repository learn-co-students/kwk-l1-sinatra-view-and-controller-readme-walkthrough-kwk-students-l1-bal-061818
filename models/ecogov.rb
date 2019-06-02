$hash_states = {
  "AL" => "Doug Jones(Y), Richard Shelby(N)", 
  "AK" => "Dan Sullivan(N), Lisa Murkowski(Y)",
  "AR" => "John Boozman(N), Tom Cotton(N)",
  "AZ" => "Jeff Flake (N) , John McCain (N)",
  "CA" => "Dianne Feinstein(Y), Kamala Harris(Y)",
  "CO" => "Michael (Y), Cory Gardner(N)",
  "CT" => "Richard Blumenthal(Y), Christopher Murphy(Y)",
  "DE" => "Thomas Carper(Y), Christopher Coons(Y)",
  "FL" => "Bill Nelson(Y), Marco Rubio(N)",
  "GA" => "Johnny Isakson(N), David Perdue(N)",
  "HI" => "Brian Schatz(Y), Mazie Hirono(Y)",
  "ID" => "Mike Crapo(N), James Risch(N)",
  "IL" => "Tammy Duckworth(Y), Richard Durbin(Y)",
  "IN" => "Joe Donnelly(Y), Todd Young(N)",
  "IA" => "Joni Ernst(N), Chuck Grassley(N)",
  "KS" => "Jeff Moran(N), Pat Roberts(N)",
  "KY" => "Mitch McConnell(N), Paul Rand(N)",
  "LA" => "Bill Cassidy(N), John Kennedy(Y)",
  "ME" => "Susan Collins(Y), Angus King Jr.(Y)",
  "MD" => "Benjamin Cardin(Y), Chris Van Hollen(Y)",
  "MA" => "Edward Markey(Y), Elizabeth Warren(Y)",
  "MI" => "Gary Peters(Y), Debbie Stabenow(Y)", 
  "MN" => "Amy Klobuchar(Y), Tina Smith(Y)",
  "MS" => "Cindy Hyde-Smith(N), Roger Wicker(N)",
  "MO" => "Roy Blunt(N), Steve Daines(N)",
  "MT" => "Claire McCaskill(Y), John Tester(Y)",
  "NE" => "Deb Fischer(N), Ben Sasse(N)",
  "NV" => "Catherine Cortez Masto(Y), Dean Heller(N)",
  "NH" => "Margaret Wood Hassan(Y), Jeanne Shaheen(Y)",
  "NJ" => "Cory Booker(Y), Robert Menendez(Y)",
  "NM" => "Martin Heinrich(Y), Tom Udall(Y)",
  "NY" => "Kristen Gillibrand(Y), Charles Schumer(Y)",
  "NC" => "Richard Burr(N), Thom Tillis(N)",
  "ND" => "Heidi Heitkamp(Y), John Hoeven(N)",
  "OH" => "Sherrod Brown(N), Rob Portman(N)",
  "OK" => "James Lankford(N), James Inhofe(N)",
  "OR" => "Ron Wyden(Y), Jeff Merkley(Y)",
  "PA" => "Robert Casey(Y), Patrick Toomey(N)",
  "RI" => "Jack Reed(Y), Sheldon Whithouse(Y)",
  "SD" => "Mike Rounds(N), Jon Thune(N)",
  "SC" => "Lindsey Graham(Y), Tim Scott(N)",
  "TN" => "Lamar Alexander(Y), Bob Corker(N)",
  "TX" => "John Cornyn(N), Ted Cruz(N)",
  "UT" => "Orrin Hatch(N), Mike Lee(N)",
  "VT" => "Patrick Leahy(Y), Bernard Sanders(Y)",
  "VA" => "Tim Kaine(Y), Mark Warner(Y)",
  "WA" => "Maria Cantwell(Y), Patty Murray(Y)",
  "WV" => "Shelley Moore Capito(N), Joe Manchin III(Y)", 
  "WI" => "Tammy Baldwin(Y), Ron Johnson(N)",
  "WY" => "John Barrasso(N), Michael Enzi(N)"
}

 $state_array=["AL", "AK", "AR", "AZ", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"]
 
  user_value = user_value.to_s
  
  def your_senators(user_value)
    # user_value = user_value.to_s
    
    if $state_array.include?(user_value) == true
     return $hash_states[user_value].to_s
     
    elseif $state_array.include?(user_value) == false
      "Input Error"
    end 
  end 









