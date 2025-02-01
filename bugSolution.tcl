proc get_element {list index} { 
    if {$index < 0 || $index >= [llength $list]} { 
        return -code error "Index out of range" 
    } 
    return [lindex $list $index] 
} 

# Example usage with error handling 
set mylist {a b c} 

# Correct usage 
set element [get_element $mylist 1] 
puts "Element at index 1: $element" 

# Example of error handling 
set result [catch {get_element $mylist 3} msg] 
if {$result} { 
    puts "Error: $msg" 
} 