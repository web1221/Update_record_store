require('rspec')
require('album')
# describe('#Album') do
#   it('') do
#     expect().to(eq())
#   end
# end

describe('.all') do
  it('empty at first') do
    expect(Album.all()).to(eq([]))
  end
end
