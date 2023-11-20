import YandexMobileAds

final class InlineBannerViewController: UIViewController {
    private lazy var adView: YMAAdView = {
        let adSize = YMABannerAdSize.inlineSize(withWidth: 320, maxHeight: 80)
        
        // Replace demo demo-banner-yandex with actual Ad Unit ID
        let adView = YMAAdView(adUnitID: "R-M-3971265-1", adSize: adSize)
        adView.delegate = self
        adView.translatesAutoresizingMaskIntoConstraints = false
        return adView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadAd()
        showAd()
    }
    
    func loadAd() {
        adView.loadAd()
    }
    
    func showAd() {
        view.addSubview(adView)
        NSLayoutConstraint.activate([
           // adView.topAnchor.constraint(equalTo: loadButton.bottomAnchor, constant: 100),
           // adView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            adView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}


extension InlineBannerViewController: YMAAdViewDelegate {
    func adViewDidLoad(_ adView: YMAAdView) {
        print(#function)
    }

    func adViewDidClick(_ adView: YMAAdView) {
        print(#function)
    }

    func adView(_ adView: YMAAdView, didTrackImpressionWith impressionData: YMAImpressionData?) {
        print(#function)
    }

    func adViewDidFailLoading(_ adView: YMAAdView, error: Error) {
        print(#function + "Error: \(error)")
    }

    func adViewWillLeaveApplication(_ adView: YMAAdView) {
        print(#function)
    }

    func adView(_ adView: YMAAdView, willPresentScreen viewController: UIViewController?) {
        print(#function)
    }

    func adView(_ adView: YMAAdView, didDismissScreen viewController: UIViewController?) {
        print(#function)
    }
}
