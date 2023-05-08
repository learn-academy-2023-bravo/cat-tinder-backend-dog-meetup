dogs = [
  {
        id: 1,
        name: 'Karter Dunlap (M)',
        age: "3yrs old",
        enjoys: "laying on a heating pad, and using the bathroom in the house. Ya know, casual stuff.",
        image: 'https://www.animalsaroundtheglobe.com/wp-content/uploads/2023/02/benjamin-lehman-SmkeF8ca9zM-unsplash-e1675262093637-1200x800.jpg.webp'
      },
      {
        id: 2,
        name: 'Khaleesi Ortiz (F)',
        age: "1yrs old",
        enjoys: "laying on her bed.",
        image: 'https://dogtime.com/assets/uploads/gallery/korean-jindo-dog-breed-pictures/korean-jindo-dog-breed-pictures-10.jpg'
      },
      {
        id: 3,
        name: 'Bella Taylor (F)',
        age: "5yrs old",
        enjoys: "eating everyone's food but her own.",
        image: 'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcSsylM0lFatrYrQw2bLLxFvfKdYjn8rtjBGopD9vDUZvmcq29vdgALuY5-b2GX0YYcJCNBKQKgn-VJo0_c'
      },
      {
        id: 4,
        name: 'Brownie Johnson (M)',
        age: "2yrs old",
        enjoys: "using his adorableness to get him out of trouble.",
        image: 'https://cdn.rescuegroups.org/1023/pictures/animals/4283/4283486/12100953.jpg'
      },
      {
        id: 5,
        name: 'Pawl Barkerson (M)',
        age: "10yrs old",
        enjoys: "sleeping the day away.",
        image: 'https://i.natgeofe.com/n/56781ecf-e31b-4528-b412-6d67509aae4e/55739_3x2.jpg'
      },
      {
        id: 6,
        name: 'Indiana Bones (F)',
        age: "4yrs old",
        enjoys: "digging for treasure.",
        image: 'https://www.thesprucepets.com/thmb/Fr51xXJqvdSouvLKF7ny8XeSKCk=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-490887332-6a76695e3e5b45909592235c7b458928.jpg'
      }



    ]

dogs.each do |dog|
  Dog.create dog
  puts "creating dog #{dog}"
end


