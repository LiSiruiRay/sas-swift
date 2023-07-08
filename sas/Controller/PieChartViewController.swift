//
//  PiechartViewController.swift
//  sas
//
//  Created by Ray on 7/8/23.
//

import Foundation
import UIKit
import DGCharts

class PiechartViewController: UIViewController, ChartViewDelegate {
    var pieChart = PieChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewed pie chart")
        // Do any additional setup after loading the view.
        pieChart.delegate = self
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pieChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
        
        pieChart.center = view.center
        view.addSubview(pieChart)
        
        var entries = [ChartDataEntry]()
        
        for x in 0..<10 {
            entries.append(ChartDataEntry(x: Double(x),
                                          y: Double(11)))
        }
        
        let set = PieChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.joyful()
        let data = PieChartData(dataSet: set)
        
        pieChart.data = data
        
    }
}
