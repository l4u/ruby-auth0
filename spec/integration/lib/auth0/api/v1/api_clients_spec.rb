require "spec_helper"
describe Auth0::Api::V1::Clients do

  let(:client) { Auth0Client.new(v1_creds) }
  let(:global_client) { Auth0Client.new(v1_global_creds) }
  let(:client_name) { "client#{entity_suffix}" }

  it { expect(client.clients).to_not be_empty }

  it { expect {client.create_client(client_name)}.to raise_error(Auth0::Unauthorized) }

  it { expect(global_client.create_client(client_name)).to_not be_nil }

end
