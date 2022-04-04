### A Pluto.jl notebook ###
# v0.18.1

using Markdown
using InteractiveUtils

# ╔═╡ 024aa05d-b51e-4393-a820-0d4ba6621d59
using Markdown, InteractiveUtils, PlutoUI

# ╔═╡ c18c7038-9a49-11ec-143d-1bda5759d7be
md"# Introduction to Julia"

# ╔═╡ a504202d-7416-4f83-8745-a0ddaa8ac182
md"""To start Pluto, first import the Pluto package and run it.
* using Pluto
* Pluto.run()
"""

# ╔═╡ 47a4037a-ab6b-4e14-87e1-0954bc314c79
md"## Variables"

# ╔═╡ b246d9ad-b248-4812-bdbd-abc8a027c857
lang_name = "Julia"

# ╔═╡ 2cfcc30a-98e5-4775-b7b0-fc8f7cd74b51
lang_name

# ╔═╡ dcbf5683-b543-49fa-b6ea-5020ad055f6b
age = 18

# ╔═╡ 30144f27-50af-43c4-ac8b-aa522de8dcf2
done = false

# ╔═╡ 3fd67e0a-e3bd-4f04-a5cf-5ef6f998fd56
some_value = 5.5

# ╔═╡ 73bf941e-9e6f-42af-ba4c-6148ac79b612
age + 12

# ╔═╡ ed177110-82ed-4e39-a7d8-f6c4721438c8
some_value + 2

# ╔═╡ c35a3089-2b23-45aa-ad46-6fbcca801c4b
typeof(lang_name)

# ╔═╡ dbebbc9b-985a-4ce5-b2cb-62fba1fc4f91
typeof(age)

# ╔═╡ b27de90e-ca98-408f-9803-de172e5920e6
typeof(some_value)

# ╔═╡ bfcb07ec-6f36-48ab-9903-a30a7440eb9e
typeof(done)

# ╔═╡ 5439cd3f-2f2d-4014-9899-49c3b2d81414
!done

# ╔═╡ 787e7ee1-c897-413f-80a4-a64f060707ca
another_b = true

# ╔═╡ 6d4eb9d4-2979-4f43-be66-56de667c3085
done && another_b

# ╔═╡ 52065826-9a5f-4fb7-9a88-1daf1e4aa8e5
done || another_b

# ╔═╡ 5b2d3160-733d-46ca-9464-dae87ad40b5d
1 == 2

# ╔═╡ bb20797f-94b1-4e20-8913-e2ecfbe9ee66
1 < 2

# ╔═╡ 61a22f12-61df-4097-a069-3bfa956c7da6
1 != 2

# ╔═╡ 6fb52709-19f3-4cfd-b24f-82c68e1f7423
struct Student
	name::String
	st_num::Int64
	year_of_study::Int64
end

# ╔═╡ d3d4b6a2-6093-4a97-8439-38fa8fb4ae1d
first_student = Student("Thomas", 2343,4)

# ╔═╡ 41f62f8c-3fda-4caa-9612-8bf6fabaddf9
f_stu = Student(2343, 4, "Thomas")

# ╔═╡ 05133ee8-16eb-4caa-a7ed-41b3357226bd
fieldnames(Student)

# ╔═╡ fca50aaa-0f7b-4d49-8d9e-6feb08548402
map(x -> string(x), fieldnames(Student))

# ╔═╡ 28825e53-44e6-4b4b-9673-6a9fdcbdc725
first_student.name = "Paul"

# ╔═╡ 31120a19-77d3-417c-a548-97f863384b19
mutable struct Student2
	name::String
	numb::Int64
	year::Int8
end

# ╔═╡ 3fac767e-c340-46fa-9cdc-f3b2624fa723
second_student = Student2("Paul", 2345, 3)

# ╔═╡ c424eb9f-b741-4899-91b3-6e6f2c16bdeb
second_student.name = "Dianne"

# ╔═╡ 87fe92e3-d603-4f16-b6af-b82f19d3b026
second_student.name

# ╔═╡ ee3d839e-36b9-4342-acf4-625780dc8484
second_student.numb

# ╔═╡ f6ec2022-cb3b-446d-bf25-00c2427e0e5a
second_student.st_num

# ╔═╡ 7d350c35-7c4c-48a2-a598-4871b239217f
md"## Functions"

# ╔═╡ e125417b-cdbb-414e-ade8-cb27932c488e
function add_numbers(x, y)
	return x + y
end

# ╔═╡ 035d5802-8787-41ca-9d10-cec30c8b0c5c
add_numbers(3, 7)

# ╔═╡ ddcd3f93-1a37-4c4a-bd24-143f3aeaccd5
add_numbers(3.6, 8)

# ╔═╡ a8ae52a6-614b-4e67-8ff1-0a56a8452dfc
add_numbers("one", "two")

# ╔═╡ 908407b3-8e85-4c31-bf42-3d61f5ca2b6a
methods(+)

# ╔═╡ 08934f97-34b2-4ca9-8e9c-a97fdea95ebf
add_numbers(true, 30.0)

# ╔═╡ e4158946-de77-4c35-b370-13f0e9d127b2
function round_number(x::Float64)
	return trunc(Int64, x)
end

# ╔═╡ e5aece1b-11a0-4dfa-b145-2deb31c44102
function round_number(x::Int64)
	return x
end

# ╔═╡ 9e709a8c-812f-46e9-95ab-d037ffd81382
round_number(7.4)

# ╔═╡ c7b3ad93-f8bf-4035-a78f-76509b8f31de
round_number(4)

# ╔═╡ 78a141b4-75f4-43f1-b1bf-921571b4eb2c
methods(round_number)

# ╔═╡ 32752899-1ee1-4662-bcfb-a68908ccdcdc
md"The *add_multiply* function returns multiple values. They can be regarded as a tuple"

# ╔═╡ 78aa98c6-0a33-441e-8afd-d4fd6b395a38
function add_multiply(x, y)
	addition = x + y
	mul = x * y
	return addition, mul
end

# ╔═╡ 188f47c7-b6e9-4593-b9fe-44819ef01951
first_res, second_res = add_multiply(5, 10)

# ╔═╡ c04d8405-90ef-4809-b447-c7aae2392de5
first_res

# ╔═╡ 3a81fa08-689b-428f-81d2-61332866a2ee
second_res

# ╔═╡ f85e52f9-dc0d-4201-96e8-fede1d7650ff
res = add_multiply(4, 6)

# ╔═╡ 1e112c2f-3e1e-48ba-877d-051a472671b0
first(res)

# ╔═╡ d08621fd-00da-4d68-b241-f05bb46fc8ad
last(res)

# ╔═╡ 48451466-1243-4a8d-b9b7-e7a574438137
res[1]

# ╔═╡ a8a9ebc5-b040-4848-94ed-317ba7df310c
res[2]

# ╔═╡ c34828d6-17dc-43bb-a473-8ff3ba09f61a
md"The next example defines an anonymous function"

# ╔═╡ 70d38152-828e-4d76-ad0e-e60929c1e0bc
map(x -> x + 4, 6)

# ╔═╡ d749cf65-a839-4e88-a596-cf2b0b682533
function new_log(x::Float64; the_base::Int64, the_val::Int64)::Float64
	return log(the_base, x)
end

# ╔═╡ a948ad31-1459-4553-ad91-7e07fe8c876f
new_log(6.0; the_val=4, the_base=2)

# ╔═╡ 9612f5f0-2812-4ef0-abbf-77fd5d0fb9c5
function compare(a::Int64, b::Int64)::String
	if a < b
		return "$a is less than $b"
	elseif a > b
		return "$a is greater than $b"
	else
		return "$a is equal to $b"
	end
end

# ╔═╡ e26fe2bc-e892-462c-8f6c-ba1d1959dc01
compare(3, 4)

# ╔═╡ deb2db8f-c6e4-4578-b15d-a8ade295b236
compare(7,5)

# ╔═╡ 5e4a7100-f281-4ac2-a881-c3aa42efbce4
compare(2,2)

# ╔═╡ f98dfa6a-c557-4fe1-918c-1b659b498086
md"## Tuples"

# ╔═╡ be1179f4-e8bf-4f4d-a6cf-4ff6f4cff998
tup1 = (1, 2.1, "hello")

# ╔═╡ d5cc6777-7432-4af5-b195-bb67085889e3
tup1[1]

# ╔═╡ 8634116e-32a7-4605-b111-526b8f3d7c79
typeof(tup1)

# ╔═╡ 9bcce2ff-4e69-4ca0-b354-c5f4bb190c2c
first(tup1)

# ╔═╡ ab0a8671-046f-42d1-942b-580d59e7fd8e
last(tup1)

# ╔═╡ 9968d6e1-bcae-496c-9915-ae524db05172
tup1[3]

# ╔═╡ ce78397b-61aa-4914-919a-c9dd3ab65f13
tup1[2]

# ╔═╡ 1f05673e-3092-4bb6-91df-07df0be4fffa
tup2 = (i=1, f=2.1, s="hello")

# ╔═╡ d1b5511f-6607-48fc-89e5-3a1635198dd6
first(tup2)

# ╔═╡ 440f29a3-6104-4ddf-a2e6-ab983d3b0180
tup2[1]

# ╔═╡ 2f6a25fe-d750-4959-bb05-0204cdaccc46
tup2.i

# ╔═╡ 4cd522f7-604b-47a2-b812-98f0e21f0157
md"## Ranges"

# ╔═╡ 82010b90-41fe-4e0f-86eb-66eba984ef7b
typeof(1:10)

# ╔═╡ 89427924-03e8-4386-923f-e46740137ffc
typeof(1:3:10)

# ╔═╡ 89a7ddd8-33f9-438f-905e-03527e3caac2
[x for x in 1:10]

# ╔═╡ 51ae09bb-3fe6-4a54-91d7-0984f443eb27
[x^2 for x in 1:3:10]

# ╔═╡ 315654f0-504a-4a89-961a-efb57fa8dd4f
[x * y for x in 1:3:10 for y in 1:3]

# ╔═╡ 401d97de-c17d-4f92-b331-11c584c49a78
md"## Vectors"

# ╔═╡ 6725289a-981e-4d1a-860d-ee7ae3160a5c
vec = [1, 2, 3]

# ╔═╡ 76ddf548-8293-4eb2-87c5-947e58540ffa
typeof(vec)

# ╔═╡ fb80577f-b705-4e92-8b01-f5e93538ccbc
vec_eg = [3,4,5]

# ╔═╡ db1e2900-6f07-4c2b-90fc-9e8041387a83
my_vec1 = Vector{Int64}(undef, 5)

# ╔═╡ 779a3405-2c1a-4aef-8250-33691d23b4fe
my_vec2 = zeros(Int64, 5)

# ╔═╡ b2ef1334-cb6c-47c3-bd47-6b4e196a1dc0
my_vec3 = ones(Int64, 5)

# ╔═╡ 48296fa9-f89d-46d2-8248-666d561e82fb
fill!(my_vec1, 3)

# ╔═╡ fb92dd57-3842-4dec-a409-ecd4fee8ce33
my_vec1

# ╔═╡ 2442c85b-78e6-4319-abf6-522c43a102c4
typeof(vec)

# ╔═╡ 87a6a894-dbd2-4758-81fd-9afcc2cbdfee
vec

# ╔═╡ b4a174e0-df34-4bfc-8916-121a3000f391
vec2 = vec .* 2

# ╔═╡ 4e1dc38e-4781-434b-9e88-ce7e935fb317
function add_one!(v::Vector{Int64})::Nothing
	for i in 1:length(v)
		v[i] += 1
	end
	return nothing
end

# ╔═╡ 00cc2749-82c2-4571-9305-d289c2d89083
function add_one2(v::Vector{Int64})
	v2 = []
	for i in 1:length(v)
		push!(v2, v[i] + 1)
	end
	return v2
end

# ╔═╡ a18435f2-1fc7-46aa-9aca-564f6802c7b7
vec

# ╔═╡ 7a4d9356-f339-4d30-89f7-41dd47cb7f82
vec3 = add_one2(vec)

# ╔═╡ 9df17294-4d05-4d8c-92d3-59a9b8c1eafd
vec

# ╔═╡ 31acf571-9456-4162-9043-50e853036a56
add_one!(vec_eg)

# ╔═╡ c83c53ca-abc4-4575-8440-ebac0589b231
vec_eg

# ╔═╡ a2faa44f-d379-44c3-9bc6-b5271fd08737
eltype(vec_eg)

# ╔═╡ fa4a3e57-134a-4d3f-9f3f-8ef02c049a24
ndims(vec_eg)

# ╔═╡ 24837f22-5a46-4ad1-965b-d40777558bc9
size(vec_eg)

# ╔═╡ 8eb3adeb-b894-4f7e-947e-7d040cf89041
length(vec_eg)

# ╔═╡ cb9a05e3-a932-4b7f-a8dd-722b761e6a71
md"""Note that length returns the total number of elements, while size returns a tuple with the number of elements per dimension"""

# ╔═╡ 79f89446-3b72-4915-b1bb-7f12fe00aa74
sub_vec = vec_eg[1:2]

# ╔═╡ fa2d52f9-e6e5-4e4c-8eff-af984cefb544
map(x -> x^2, vec_eg)

# ╔═╡ b1c0c9d5-daef-479b-b942-a87d4cb06e31
new_vec_eg = [4,5,6]

# ╔═╡ 02d9c7e6-0508-49bc-a192-93154bb03f70
vec_eg2 = new_vec_eg .^ 2

# ╔═╡ ca0d3dc0-e7a7-401b-b07a-27147dafa657
md"## Pairs"

# ╔═╡ 9dacdb6b-147a-4a89-aa8b-33efded4c3a3
pair_eg = "One" => 1

# ╔═╡ 55986ec1-e9c9-4811-b722-945e6b44d39e
pair_eg.first

# ╔═╡ 3d39fee2-a000-4449-8273-9e61a637dd49
first(pair_eg)

# ╔═╡ 094363f2-62ac-4c13-bc18-c3bf1c7f329a
pair_eg.second

# ╔═╡ afd863e4-5cec-44b3-9797-70ad3e080411
last(pair_eg)

# ╔═╡ eee577e4-0065-4d4c-850a-b67b3d6a50a5
md"## Dictionaries"

# ╔═╡ 4a417d8e-3f11-49a5-9d95-61cbf309d6c9
eg1 = Dict{String, Int64}([("one", 1), ("deux", 2), ("three", 3), ("quatro", 4)])

# ╔═╡ 87494b0e-1038-405e-bd8c-002b258de72c
eg2 = Dict{String, Float64}("Samuel" => 3.5, "Jeremy" => 2.1, "Paul" => 3)

# ╔═╡ 2d11af11-a5eb-4e8b-a08c-e3efa420f09a
eg1["one"]

# ╔═╡ 56632a31-3c34-452d-aec6-4a138632490b
eg2["Samuel"]

# ╔═╡ 0e46e7bb-e4cb-4539-8405-a20e3abdb884
begin
	names = ["Denis", "Viktor", "Vlad", "Siriza"]
	marks = [3.5, 5.6, 2.6]
	assessment = Dict{String, Float64}(zip(names, marks))
end

# ╔═╡ 629613d1-c198-4a6d-ab1c-8c311fe60f8e
md"## Strings"

# ╔═╡ ced1b606-14ac-45c4-87c3-b1f9bbd168e9
my_str = "This is an amazing language"

# ╔═╡ 74f07dc2-5b07-4a66-98f8-03f9e62ec97c
startswith(my_str, "language")

# ╔═╡ bb46b07a-6cdd-4893-a7e0-7a51fe005b6c
endswith(my_str, "language")

# ╔═╡ 934032b2-b8b4-415f-b0df-8ea9076793ad
occursin("language", my_str)

# ╔═╡ 6c61f526-65f4-43c2-94e6-80d912954683
uppercase(my_str)

# ╔═╡ 39f2f062-104b-4dd3-8076-239ffc337227
replace(my_str, "amazing" => "awesome")

# ╔═╡ 5ac991c8-9121-413f-907b-c8f9db8fe158
split(my_str, " ")

# ╔═╡ 43627518-257e-4df3-954d-c59de51b2a5e
"hello" * " Sir!"

# ╔═╡ 457db669-427f-49f6-9d14-63a578f9859b
join(["hello", "Sir!"], " ")

# ╔═╡ ed7b0a38-2ff9-49d7-a534-a88c6f033971
name = "Dunken"

# ╔═╡ 84443d3e-5c3f-4fb4-8921-e719c4d76526
"Howdy $(name)!"

# ╔═╡ 626be8f2-65e4-4353-b405-e9e834227190
md"## Symbols"

# ╔═╡ 29c7d66c-17c2-490a-9a75-8f0ddf58907e
sym_eg = :comp1

# ╔═╡ 8024faab-ca10-45b7-ad42-7c0a35aabc81
string(sym_eg)

# ╔═╡ ecec2313-96cf-40a6-82e0-d7a91b2331db
Symbol("col1")

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
InteractiveUtils = "b77e0a4c-d291-57a0-90e8-8db25a27a240"
Markdown = "d6f4376e-aef5-505a-96c1-9c027394607a"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.35"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
git-tree-sha1 = "2b078b5a615c6c0396c77810d92ee8c6f470d238"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.3"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "13468f237353112a01b2d6b32f3d0f80219944aa"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.2"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "85bf3e4bd279e405f91489ce518dedb1e32119cb"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.35"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╠═024aa05d-b51e-4393-a820-0d4ba6621d59
# ╠═c18c7038-9a49-11ec-143d-1bda5759d7be
# ╠═a504202d-7416-4f83-8745-a0ddaa8ac182
# ╠═47a4037a-ab6b-4e14-87e1-0954bc314c79
# ╠═b246d9ad-b248-4812-bdbd-abc8a027c857
# ╠═2cfcc30a-98e5-4775-b7b0-fc8f7cd74b51
# ╠═dcbf5683-b543-49fa-b6ea-5020ad055f6b
# ╠═30144f27-50af-43c4-ac8b-aa522de8dcf2
# ╠═3fd67e0a-e3bd-4f04-a5cf-5ef6f998fd56
# ╠═73bf941e-9e6f-42af-ba4c-6148ac79b612
# ╠═ed177110-82ed-4e39-a7d8-f6c4721438c8
# ╠═c35a3089-2b23-45aa-ad46-6fbcca801c4b
# ╠═dbebbc9b-985a-4ce5-b2cb-62fba1fc4f91
# ╠═b27de90e-ca98-408f-9803-de172e5920e6
# ╠═bfcb07ec-6f36-48ab-9903-a30a7440eb9e
# ╠═5439cd3f-2f2d-4014-9899-49c3b2d81414
# ╠═787e7ee1-c897-413f-80a4-a64f060707ca
# ╠═6d4eb9d4-2979-4f43-be66-56de667c3085
# ╠═52065826-9a5f-4fb7-9a88-1daf1e4aa8e5
# ╠═5b2d3160-733d-46ca-9464-dae87ad40b5d
# ╠═bb20797f-94b1-4e20-8913-e2ecfbe9ee66
# ╠═61a22f12-61df-4097-a069-3bfa956c7da6
# ╠═6fb52709-19f3-4cfd-b24f-82c68e1f7423
# ╠═d3d4b6a2-6093-4a97-8439-38fa8fb4ae1d
# ╠═41f62f8c-3fda-4caa-9612-8bf6fabaddf9
# ╠═05133ee8-16eb-4caa-a7ed-41b3357226bd
# ╠═fca50aaa-0f7b-4d49-8d9e-6feb08548402
# ╠═28825e53-44e6-4b4b-9673-6a9fdcbdc725
# ╠═31120a19-77d3-417c-a548-97f863384b19
# ╠═3fac767e-c340-46fa-9cdc-f3b2624fa723
# ╠═c424eb9f-b741-4899-91b3-6e6f2c16bdeb
# ╠═87fe92e3-d603-4f16-b6af-b82f19d3b026
# ╠═ee3d839e-36b9-4342-acf4-625780dc8484
# ╠═f6ec2022-cb3b-446d-bf25-00c2427e0e5a
# ╠═7d350c35-7c4c-48a2-a598-4871b239217f
# ╠═e125417b-cdbb-414e-ade8-cb27932c488e
# ╠═035d5802-8787-41ca-9d10-cec30c8b0c5c
# ╠═ddcd3f93-1a37-4c4a-bd24-143f3aeaccd5
# ╠═a8ae52a6-614b-4e67-8ff1-0a56a8452dfc
# ╠═908407b3-8e85-4c31-bf42-3d61f5ca2b6a
# ╠═08934f97-34b2-4ca9-8e9c-a97fdea95ebf
# ╠═e4158946-de77-4c35-b370-13f0e9d127b2
# ╠═e5aece1b-11a0-4dfa-b145-2deb31c44102
# ╠═9e709a8c-812f-46e9-95ab-d037ffd81382
# ╠═c7b3ad93-f8bf-4035-a78f-76509b8f31de
# ╠═78a141b4-75f4-43f1-b1bf-921571b4eb2c
# ╠═32752899-1ee1-4662-bcfb-a68908ccdcdc
# ╠═78aa98c6-0a33-441e-8afd-d4fd6b395a38
# ╠═188f47c7-b6e9-4593-b9fe-44819ef01951
# ╠═c04d8405-90ef-4809-b447-c7aae2392de5
# ╠═3a81fa08-689b-428f-81d2-61332866a2ee
# ╠═f85e52f9-dc0d-4201-96e8-fede1d7650ff
# ╠═1e112c2f-3e1e-48ba-877d-051a472671b0
# ╠═d08621fd-00da-4d68-b241-f05bb46fc8ad
# ╠═48451466-1243-4a8d-b9b7-e7a574438137
# ╠═a8a9ebc5-b040-4848-94ed-317ba7df310c
# ╠═c34828d6-17dc-43bb-a473-8ff3ba09f61a
# ╠═70d38152-828e-4d76-ad0e-e60929c1e0bc
# ╠═d749cf65-a839-4e88-a596-cf2b0b682533
# ╠═a948ad31-1459-4553-ad91-7e07fe8c876f
# ╠═9612f5f0-2812-4ef0-abbf-77fd5d0fb9c5
# ╠═e26fe2bc-e892-462c-8f6c-ba1d1959dc01
# ╠═deb2db8f-c6e4-4578-b15d-a8ade295b236
# ╠═5e4a7100-f281-4ac2-a881-c3aa42efbce4
# ╠═f98dfa6a-c557-4fe1-918c-1b659b498086
# ╠═be1179f4-e8bf-4f4d-a6cf-4ff6f4cff998
# ╠═d5cc6777-7432-4af5-b195-bb67085889e3
# ╠═8634116e-32a7-4605-b111-526b8f3d7c79
# ╠═9bcce2ff-4e69-4ca0-b354-c5f4bb190c2c
# ╠═ab0a8671-046f-42d1-942b-580d59e7fd8e
# ╠═9968d6e1-bcae-496c-9915-ae524db05172
# ╠═ce78397b-61aa-4914-919a-c9dd3ab65f13
# ╠═1f05673e-3092-4bb6-91df-07df0be4fffa
# ╠═d1b5511f-6607-48fc-89e5-3a1635198dd6
# ╠═440f29a3-6104-4ddf-a2e6-ab983d3b0180
# ╠═2f6a25fe-d750-4959-bb05-0204cdaccc46
# ╠═4cd522f7-604b-47a2-b812-98f0e21f0157
# ╠═82010b90-41fe-4e0f-86eb-66eba984ef7b
# ╠═89427924-03e8-4386-923f-e46740137ffc
# ╠═89a7ddd8-33f9-438f-905e-03527e3caac2
# ╠═51ae09bb-3fe6-4a54-91d7-0984f443eb27
# ╠═315654f0-504a-4a89-961a-efb57fa8dd4f
# ╠═401d97de-c17d-4f92-b331-11c584c49a78
# ╠═6725289a-981e-4d1a-860d-ee7ae3160a5c
# ╠═76ddf548-8293-4eb2-87c5-947e58540ffa
# ╠═fb80577f-b705-4e92-8b01-f5e93538ccbc
# ╠═db1e2900-6f07-4c2b-90fc-9e8041387a83
# ╠═779a3405-2c1a-4aef-8250-33691d23b4fe
# ╠═b2ef1334-cb6c-47c3-bd47-6b4e196a1dc0
# ╠═48296fa9-f89d-46d2-8248-666d561e82fb
# ╠═fb92dd57-3842-4dec-a409-ecd4fee8ce33
# ╠═2442c85b-78e6-4319-abf6-522c43a102c4
# ╠═87a6a894-dbd2-4758-81fd-9afcc2cbdfee
# ╠═b4a174e0-df34-4bfc-8916-121a3000f391
# ╠═4e1dc38e-4781-434b-9e88-ce7e935fb317
# ╠═00cc2749-82c2-4571-9305-d289c2d89083
# ╠═a18435f2-1fc7-46aa-9aca-564f6802c7b7
# ╠═7a4d9356-f339-4d30-89f7-41dd47cb7f82
# ╠═9df17294-4d05-4d8c-92d3-59a9b8c1eafd
# ╠═31acf571-9456-4162-9043-50e853036a56
# ╠═c83c53ca-abc4-4575-8440-ebac0589b231
# ╠═a2faa44f-d379-44c3-9bc6-b5271fd08737
# ╠═fa4a3e57-134a-4d3f-9f3f-8ef02c049a24
# ╠═24837f22-5a46-4ad1-965b-d40777558bc9
# ╠═8eb3adeb-b894-4f7e-947e-7d040cf89041
# ╠═cb9a05e3-a932-4b7f-a8dd-722b761e6a71
# ╠═79f89446-3b72-4915-b1bb-7f12fe00aa74
# ╠═fa2d52f9-e6e5-4e4c-8eff-af984cefb544
# ╠═b1c0c9d5-daef-479b-b942-a87d4cb06e31
# ╠═02d9c7e6-0508-49bc-a192-93154bb03f70
# ╠═ca0d3dc0-e7a7-401b-b07a-27147dafa657
# ╠═9dacdb6b-147a-4a89-aa8b-33efded4c3a3
# ╠═55986ec1-e9c9-4811-b722-945e6b44d39e
# ╠═3d39fee2-a000-4449-8273-9e61a637dd49
# ╠═094363f2-62ac-4c13-bc18-c3bf1c7f329a
# ╠═afd863e4-5cec-44b3-9797-70ad3e080411
# ╠═eee577e4-0065-4d4c-850a-b67b3d6a50a5
# ╠═4a417d8e-3f11-49a5-9d95-61cbf309d6c9
# ╠═87494b0e-1038-405e-bd8c-002b258de72c
# ╠═2d11af11-a5eb-4e8b-a08c-e3efa420f09a
# ╠═56632a31-3c34-452d-aec6-4a138632490b
# ╠═0e46e7bb-e4cb-4539-8405-a20e3abdb884
# ╠═629613d1-c198-4a6d-ab1c-8c311fe60f8e
# ╠═ced1b606-14ac-45c4-87c3-b1f9bbd168e9
# ╠═74f07dc2-5b07-4a66-98f8-03f9e62ec97c
# ╠═bb46b07a-6cdd-4893-a7e0-7a51fe005b6c
# ╠═934032b2-b8b4-415f-b0df-8ea9076793ad
# ╠═6c61f526-65f4-43c2-94e6-80d912954683
# ╠═39f2f062-104b-4dd3-8076-239ffc337227
# ╠═5ac991c8-9121-413f-907b-c8f9db8fe158
# ╠═43627518-257e-4df3-954d-c59de51b2a5e
# ╠═457db669-427f-49f6-9d14-63a578f9859b
# ╠═ed7b0a38-2ff9-49d7-a534-a88c6f033971
# ╠═84443d3e-5c3f-4fb4-8921-e719c4d76526
# ╠═626be8f2-65e4-4353-b405-e9e834227190
# ╠═29c7d66c-17c2-490a-9a75-8f0ddf58907e
# ╠═8024faab-ca10-45b7-ad42-7c0a35aabc81
# ╠═ecec2313-96cf-40a6-82e0-d7a91b2331db
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
