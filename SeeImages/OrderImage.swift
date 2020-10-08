import UIKit
import Foudation


func orderImg(_ pictures: [String]) -> [String] {
    guard pictures.count > 1 else { return pictures}
    
    let pivot = pictures[pictures.count / 2]
    let less = pictures.filter {$0 < pivot}
    let equal = pictures.filter {$0 == pivot}
    let greater = pictures.filter {$0 > pivot}
    
    return orderImg(less) + equal + orderImg(greater)
}
    