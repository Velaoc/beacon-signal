# Seeds are optional: this application boots, migrates, and serves every page
# with a completely empty database, and nothing here is required in
# production.
#
# The first operator account is promoted from the console on purpose; there is
# deliberately no seeded administrator, password, or API key anywhere in this
# repository.

# Sample leads so the operator can see the landing page capture working in the
# admin area without waiting for real signups. Idempotent: safe to re-run.
sample_leads = [
  { name: "Maya Chen", email: "maya@northwind.example" },
  { name: "Tom Okafor", email: "tom@brightline.example" },
  { name: nil, email: "priya@lumen.example" }
]

sample_leads.each do |attrs|
  Lead.find_or_create_by!(email: attrs[:email]) do |lead|
    lead.name = attrs[:name]
    lead.source = "landing-page"
  end
end
