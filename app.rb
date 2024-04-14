require "sinatra"
require "sinatra/reloader"


get("/") do
  '
  <a href="/rock">Play Rock</a>
  <div><a href="/paper">Play Paper</a></div>
  <a href="/scissors">Play Scissors</a>
  
  <h1>Welcome to Rock-Paper-Scissors!</h1>
  <p>From <a href="https://en.wikipedia.org/wiki/Rock_paper_scissors">Wikipedia</a>:</p>
  <p>Rock-paper-scissors (also known as paper, scissors, stone or other variants) is a hand game usually played between two people, in which each player simultaneously forms one of three shapes with an outstretched hand.</p>
  <p> These shapes are: </p>
  <ul>
    <li>"rock" (a closed fist)</li>
    <li>"paper" (a flat hand)</li>
    <li>"scissors" (a fist with the index and middle fingers extended, forming a V)</li>
  </ul>
  <p>A player who decides to play rock will beat another player who has chosen scissors ("rock crushes scissors" or sometimes "blunts scissors"), but will lose to one who has played paper ("paper covers rock"); a play of paper will lose to a play of scissors ("scissors cut[s] paper"). If both players choose the same shape, the game is tied and is usually immediately replayed to break the tie.</p>
 
  <table border="1">
  <tr>
    <td rowspan="2" colspan="2"></td> 
    <td colspan="3">and they play...</td>
  </tr>
  <tr>

    <td>Rock</td>
    <td>Paper</td>
    <td>Scissors</td>
  </tr>
  <tr>
    <td rowspan="3">If we play...</td>
    <td>Rock</td>
    <td>We tie</td>
    <td>We lose</td>
    <td>We win</td>
  </tr>
  <tr>
    <td>Paper</td>
    <td>We win</td>
    <td>We tie</td>
    <td>We lose</td>
  </tr>
  <tr>
    <td>Scissors</td>
    <td>We lose</td>
    <td>We win</td>
    <td>We tie</td>
  </tr>
</table>
  
 <p>Originating from China and Japan, other names for the game in the English-speaking world include roshambo and other orderings of the three items, with "rock" sometimes being called "stone".</p>
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Rock-paper-scissors.svg/627px-Rock-paper-scissors.svg.png" alt="Cycle diagram showing scissors beats paper, paper beats rock, rock beats scissors">
  
  <p>A chart showing how the three game elements interact</p>
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg/640px-Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg" alt="Update">
  
  <p>Kitsune-ken was a popular Japanese rock–paper–scissors variant.</p>
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg/640px-Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg" alt="Update">
  <p>Mushi-ken, the earliest Japanese sansukumi-ken game (1809). From left to right: slug (namekuji), frog (kawazu) and snake (hebi).</p>
  '
end

get("/dog") do
    '<img src="/thumbnails/Japanese_rps.jpg" alt="Description of the image">'
end

get("/rock") do
  words = ["rock", "paper", "scissors"]
  they_play = words.sample
  
  if they_play=="paper"
    output = "We lost!"
  elsif they_play=="scissors"
    output = "We won!"
  elsif they_play=="rock"
    output = "We tied!"
  end

  @outcome = "We played rock! <br><br> They played #{they_play}! <br><br> #{output}"

  erb(:rock)

end

get("/paper") do
  words = ["rock", "paper", "scissors"]
  they_play = words.sample
  
  if they_play=="paper"
    output = "We tied!"
  elsif they_play=="scissors"
    output = "We lost!"
  elsif they_play=="rock"
    output = "We won!"
  end

  @outcome = "We played paper! <br><br> They played #{they_play}! <br><br> #{output}"

  erb(:paper)

end

get("/scissors") do
  words = ["rock", "paper", "scissors"]
  they_play = words.sample
  
  if they_play=="paper"
    output = "We won!"
  elsif they_play=="scissors"
    output = "We tied!"
  elsif they_play=="rock"
    output = "We lost!"
  end

  @outcome = "We played scissors!<br><br>They played #{they_play}!<br><br>#{output}"

  erb(:scissors)

end
