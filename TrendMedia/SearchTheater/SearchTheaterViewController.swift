//
//  SearchTheaterViewController.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/08/15.
//

import UIKit
import MapKit //CLLocationManager1.
import CoreLocation

class SearchTheaterViewController: UIViewController {
    
    //CLLocationManager2. 위치정보 인스턴스 선언
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var theaterMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //CLLocationManager3. 프로토콜 연결
        locationManager.delegate = self
        
    }

    func setRegionAndAnnotation(center: CLLocationCoordinate2D) {
        let region = MKCoordinateRegion(center: center, latitudinalMeters: 100, longitudinalMeters: 100)
        theaterMap.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = center
        annotation.title = "현재 위치"
        theaterMap.addAnnotation(annotation)

    }
    


}

extension SearchTheaterViewController {
    //CLLocationManager5. 위치와 관련된 User Defined 메서드 설정 : iOS버젼에 따른 분기 처리 및 위치 서비스 활성화 여부 확인(활성화 -> 권한요청, 비활성화 -> 얼럿)
    func checkUserDeviceLocationAuthorization() {
        let authorizationStatus: CLAuthorizationStatus
        
        if #available(iOS 14.0, *) {
            authorizationStatus = locationManager.authorizationStatus
        } else {
            authorizationStatus = CLLocationManager.authorizationStatus()
        }
        
        if CLLocationManager.locationServicesEnabled() {
            checkCurrentLocationAuthorization(authorizationStatus)
        } else {
            print("위치서비스가 꺼져 있어서 위치 권한 요청을 못합니다.")
        }
    }
    
    //CLLocationManager6. 사용자의 위치 권한 상태 확인 : 사용자위치 허용, 거부, 아직선택안함 등 확인(단, 사전에 iOS위치 서비스활성화 꼭 확인)
    func checkCurrentLocationAuthorization(_ authorizationStatus: CLAuthorizationStatus) {

        switch authorizationStatus {
        case .notDetermined:
            print("NOTDETERMINED")
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestWhenInUseAuthorization()
            locationManager.startUpdatingLocation()
        case .restricted, .denied:
            print("DENIED, 아이폰 설정으로 유도")
        case .authorizedAlways:
            print("USE ALWAYS")
        case .authorizedWhenInUse:
            print("WHEN IN USE")
            locationManager.startUpdatingLocation()
        case .authorized:
            print("DEFAULT")
        }
    }
}

extension SearchTheaterViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(#function)
        
        if let coordinate = locations.last?.coordinate {
            setRegionAndAnnotation(center: coordinate)
        }
        locationManager.stopUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(#function)
        
        let center = CLLocationCoordinate2D(latitude: 37.517829 , longitude: 126.886270)
        let region = MKCoordinateRegion(center: center, latitudinalMeters: 100, longitudinalMeters: 100)
        theaterMap.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = center
        annotation.title = "청년취업사관학교 영등포캠퍼스"
        theaterMap.addAnnotation(annotation)
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        print(#function)
        checkUserDeviceLocationAuthorization()
    }
}
