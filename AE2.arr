use context dcic2024
include csv 
include data-source 

penguins = load-table:
  penguin_number :: Number,
  species :: String, 
  island :: String, 
  bill_length_mm :: Number, 
  bill_depth_mm :: Number, 
  flipper_length_mm :: Number, 
  body_mass_g :: Number, 
  sex :: String, 
  year :: Number
  sanitize penguin_number using num-sanitizer
  sanitize bill_length_mm using num-sanitizer
  sanitize bill_depth_mm using num-sanitizer
  sanitize flipper_length_mm using num-sanitizer
  sanitize body_mass_g using num-sanitizer 
  sanitize year using num-sanitizer 
  source: csv-table-file("penguins.csv", default-options) 
end 

penguins 
    
    
#Scalar Processing 

#Question 1: How many of the penguins are from the Torgersen Island 

torgersen = penguins.get-column("island")

fun torgersen_penguins(l :: List) -> Number: 
  doc: "find the amount of penguins that are from the torgersen island"
  cases(List) l: 
    | empty => 0
    | link(f, r) => 
      if f == "Torgersen":
        1 + torgersen_penguins(r)
      else:
        torgersen_penguins(r)
      end
  end  
end



torgersen_penguins(torgersen)
  #bill_area = build-column(penguins, "bill_area", area)

  #bill_area 


#Transform Processing 
#Question 2: Change the bill area from millimeters to meters 
fun area(r :: Row) -> Number: 
  doc: "Find the area of two rows that contain the values of lengths and widths" 
  r["bill_length_mm"] * r["bill_depth_mm"] 
end 


  
bill_area = build-column(penguins, "bill_areas", area) 
bill_area

bill_area_lengths = bill_area.get-column("bill_areas")

fun change_bill_area(l :: List) -> List: 
  doc: "Print out a list of all the bill area lengths, changed from millimeters to meters" 
  cases(List) l: 
    | empty => empty  
    | link(f, r) => link(f / 100, change_bill_area(r))
  end 
end 

change_bill_area(bill_area_lengths)


#Selection 
#Question 3: Print out all of the columns that have a flipper length of over 190 millimeters 

flipper_length = penguins.get-column("flipper_length_mm") 

fun high_flipper_length(l :: List) -> List: 
  doc: "Print out all of the flipper lengths that are greater than 190" 
  cases(List) l: 
    | empty => empty 
    | link(f, r) => 
      if f > 190: 
        link(f, high_flipper_length(r))
      else:
        high_flipper_length(r)
      end 
  end 
end 

high_flipper_length(flipper_length)


#Accumulation 




