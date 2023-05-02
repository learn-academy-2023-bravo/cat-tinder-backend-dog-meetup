dogs = [
  {
    name: 'Karter',
    age: 3,
    enjoys: 'Laying on a heating pad, and using the bathroom in the house. Ya know, casual stuff.',
    image: 'https://www.purina.co.uk/sites/default/files/styles/square_medium_440x440/public/2022-08/Yorkie-Poo-Yorkipoo.jpg?itok=EsHlkqjB'
  },
  {
    name: 'Khaleesi',
    age: 1,
    enjoys: 'Laying on her bed.',
    image: 'https://dogtime.com/assets/uploads/gallery/korean-jindo-dog-breed-pictures/korean-jindo-dog-breed-pictures-10.jpg'
  },
  {
    name: 'Bella',
    age: 5,
    enjoys: "Eating everyone's food but her own.",
    image: 'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcSsylM0lFatrYrQw2bLLxFvfKdYjn8rtjBGopD9vDUZvmcq29vdgALuY5-b2GX0YYcJCNBKQKgn-VJo0_c'
  }
]

dogs.each do |dog|
  Dog.create dog
  puts "creating dog #{dog}"
end


