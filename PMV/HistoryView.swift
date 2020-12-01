//
//  HistoryView.swift
//  PMV
//
//  Created by richard on 21/12/2016.
//  Copyright © 2016 richard. All rights reserved.
//

import UIKit
import Charts
class HistoryView: UIViewController {
   
    @IBOutlet weak var myChart: BarChartView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var months: [String]!
        months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        let unitsSold = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 4.0, 18.0, 2.0, 4.0, 5.0, 4.0]
        
        setChart(months, values: unitsSold)

        // Do any additional setup after loading the view.
    }
    func setChart(dataPoints: [String], values: [Double]) {
        
             var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
        
            let dataEntry = BarChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(yVals: dataEntries, label: "Units Sold")
        let chartData = BarChartData(xVals: dataPoints, dataSet: chartDataSet)
         myChart.data = chartData
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
