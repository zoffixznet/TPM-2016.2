use Crypt::Bcrypt;
say (rand.Str xx 32)».&bcrypt-hash: :12rounds;
=finish

sub slow-stuff {
    sleep 1;
    rand;
}

my @results;
for ^100 -> $n {
    @results.push: start slow-stuff;
}
print await @results;



=finish

sub what-is {
    return $^num.is-prime ?? "$num is prime" !! "$num is not prime";
}

my @results;
for 3¹²³⁴⁵ … 3¹²³⁴⁵+127 -> $n {
    @results.push: start what-is $n;
}
print await @results;

# 1-core: 74s
# 24-core: 19s
