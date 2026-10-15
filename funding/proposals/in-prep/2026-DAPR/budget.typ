// Planning assumptions only: confirm effort, rates, fringe, and classification.
// This file feeds the budget table and the numerical amounts in the prose.
#let project-months = 12
#let pi = (name: "Aaron T. Cherian", role: "PD/PI", effort: 0.30, annual-base: 60000)
#let mentor = (name: "Jonathan S. Matthis", role: "Mentor", effort: 0.10, annual-base: 80000)
#let fringe-rate = 0.15
#let indirect-rate = 0.08
#let storage = 600
#let computing = 500

#let months(person) = project-months * person.effort
#let salary(person) = calc.round(person.annual-base * person.effort * project-months / 12)
#let fringe(person) = calc.round(salary(person) * fringe-rate)
#let personnel(person) = salary(person) + fringe(person)
#let salaries = salary(pi) + salary(mentor)
#let fringes = fringe(pi) + fringe(mentor)
#let personnel-total = salaries + fringes
#let other-direct = storage + computing
#let direct-costs = personnel-total + other-direct
#let indirect-costs = calc.round(direct-costs * indirect-rate)
#let total-request = direct-costs + indirect-costs

#let money(value, symbol: true) = {
  let digits = str(int(calc.round(value)))
  let formatted = ""
  for (i, digit) in digits.clusters().enumerate() {
    if i > 0 and calc.rem(digits.len() - i, 3) == 0 { formatted += "," }
    formatted += digit
  }
  if symbol { "$" + formatted } else { formatted }
}
#let percent(value) = str(int(calc.round(100 * value))) + "%"
#let fixed-two(value) = {
  let cents = int(calc.round(value * 100))
  let fraction = calc.rem(cents, 100)
  str(int(calc.floor(cents / 100))) + "." + (if fraction < 10 { "0" } else { "" }) + str(fraction)
}
