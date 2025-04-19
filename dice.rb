require "sinatra"
require "sinatra/reloader"

get ("/") do
  '
  <h1>Dice Roll</h1>
  </ul>
    <li><a href="/dice/2/6", style ="font-size: 24px;">Rolled two 6-sided dice</a></li>
    <li><a href="/dice/2/10", style ="font-size: 24px;">Rolled two 10-sided dice</a></li>
    <li><a href="/dice/1/20", style ="font-size: 24px;">Rolled one 20-sided dice</a></li>
  </ul>
  '
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total sum of #{sum}"

  "<h1>2d6</h1>
  <p>#{outcome}</p>"
end

get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total sum of #{sum}"

  "<h1>2d10</h1>
  <p>#{outcome}</p>"
end

get("/dice/1/20") do
  first_die = rand(1..20)
  sum = first_die
  
  outcome = "You rolled a #{first_die} for a total sum of #{sum}"

  "<h1>1d20</h1>
  <p>#{outcome}</p>"
end
