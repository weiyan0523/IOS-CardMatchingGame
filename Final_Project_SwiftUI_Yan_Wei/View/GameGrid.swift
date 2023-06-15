//
//  GameGrid.swift
//  Final_Project_SwiftUI_Yan_Wei
//
//  Created by Wei Yan on 12/2/22.
//

import SwiftUI

struct GameGrid<Item, ItemView>: View where ItemView: View, Item: Identifiable{
    var items:[Item]
    var aspRatio: CGFloat
    var content: (Item) -> ItemView
    
    init (items: [Item], aspRatio: CGFloat, @ViewBuilder content: @escaping (Item) -> ItemView){
        self.items = items
        self.aspRatio = aspRatio
        self.content = content
    }
    var body: some View {
        GeometryReader{ geometry in
            let width: CGFloat = widthCalculatorThatFit(count: items.count, in: geometry.size, aspectRatio: aspRatio)
            //let width: CGFloat = 80
            LazyVGrid(columns: [GridItem(.adaptive(minimum: width))]){
                ForEach(items) {item in content(item).aspectRatio(aspRatio,contentMode: .fit)}
            }
            
        }
        
    }
    func adaptiveGridItem(width: CGFloat) -> GridItem{
        var gridItem = GridItem(.adaptive(minimum: width))
        gridItem.spacing = 0
        return gridItem
    }
    
    func widthCalculatorThatFit(count: Int, in size: CGSize, aspectRatio: CGFloat) -> CGFloat{
        var colCount = 1
        var rowCount = count
        repeat{
            let Width = size.width / CGFloat(colCount)
            let Height = Width / aspectRatio
            if CGFloat(rowCount) * Height < size.height{
                break
            }
            colCount = colCount + 1
            rowCount = (count + (colCount - 1)) / colCount
            
        }while colCount < count
        if colCount > count{
            colCount = count
        }
        
        return floor(size.width / CGFloat(colCount)) - 6
    }
}
