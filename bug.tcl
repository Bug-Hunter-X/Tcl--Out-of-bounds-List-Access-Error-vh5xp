proc get_element {list index} { 
    if {$index < 0 || $index >= [llength $list]} { 
        return -code error "Index out of range" 
    } 
    return [lindex $list $index] 
} 

# Example usage with potential error 
set mylist {a b c} 
get_element $mylist 3