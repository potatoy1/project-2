<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구독하기</title>
<link rel="shortcut icon" href="/OTTProject/view/img/logo.png"
	type="image/x-icon">
<link rel="stylesheet" href="view/css/main.css" />
</head>
<body>
		<!-- Page Wrapper -->
		<div id="page-wrapper">

			<!-- Header -->
			<%@include file="header.jsp"%>
			<div class="simpleContainer" data-transitioned-child="true">
				<div class="centerContainer firstLoad">

					<div class="subpay" data-uia="form-confirm">
						<h2 class="welcome">, 다시 방문해 주셔서 감사합니다.</h2>
						<div class="stepHeader" data-a11y-focus="true">
							<span id="" class="stepIndicator" data-uia="">
								<h1 class="stepTitle" data-uia="stepTitle">결제 정보를 확인하세요</h1>
						</div>
						<li class="orderInfoItem" data-uia="payment-item">매월 3,990원<br>
							결제수단: 카카오페이
						</li>
						<ul class="simpleForm structural ui-grid"></ul>
						<div>
							<div class="ui-binary-input bold">
								<input type="checkbox" class="all" name="all"
									id="all" value="true" tabindex="0"
									data-uia="field-consents+termsOfUseCheckAll"><label
									for="cb_termsOfUseCheckAll"
									data-uia="field-consents+termsOfUseCheckAll+label"><span
									id="" data-uia="">19세 이상이며, 아래의 약관에 모두 동의합니다.</span></label>
								<div class="helper"></div>
							</div>
							</h4>
							<div class="summary-error" data-uia="summary-error"></div>
							<div class="ui-binary-input">
								<input type="checkbox" class="del-chk" name="chb"
									id="cb_termsOfUse" value="true" tabindex="0"
									data-uia="field-consents+termsOfUse"><label
									for="cb_termsOfUse" data-uia="field-consents+termsOfUse+label"><span
									id="" data-uia="">Disney++ 이용약관 및 개인정보 처리방침에 동의합니다.
								</span></label>
								<div class="helper"></div>
							</div>
							<div class="ui-binary-input">
								<input type="checkbox" class="del-chk" name="chb"
									id="cb_personalInfoThirdParties" value="true" tabindex="0"
									data-uia="field-consents+personalInfoThirdParties"><label
									for="cb_personalInfoThirdParties"
									data-uia="field-consents+personalInfoThirdParties+label"><span
									id="" data-uia="">본인의 개인 정보를 제3자에 제공하는 데에 동의합니다.</span></label>

							</div>

							<div class="ui-binary-input">
								<input type="checkbox" class="del-chk" name="chb"
									id="cb_personalInfoGateway" value="true" tabindex="0"
									data-uia="field-consents+personalInfoGateway"><label
									for="cb_personalInfoGateway"
									data-uia="field-consents+personalInfoGateway+label"><span
									id="" data-uia="">본인의 개인 정보를 결제 서비스업체에 제공하는 데에 동의합니다.
								</span></label>
								<div class="helper"></div>
							</div>
							<div class="ui-binary-input">
								<input type="checkbox" class="del-chk" name="chb"
									id="cb_cancelMembershipAnytime" value="true" tabindex="0"
									data-uia="field-consents+cancelMembershipAnytime"><label
									for="cb_cancelMembershipAnytime"
									data-uia="field-consents+cancelMembershipAnytime+label"><span
									id="" data-uia="">멤버십을 해지하지 않으면 Disney++에서 자동으로 멤버십을
										계속하며, 멤버십 요금(현 3,990원)이 등록한 결제 수단으로 매월 청구됩니다.<br> 멤버십은
										Disney++의 '결제내역' 페이지에서 언제든지 해지할 수 있습니다.
								</span></label>
								<div class="helper"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="submitBtnContainer">
					<button onclick="location.href='/OTTProject/subpay.html'">유료멤버십 시작</button>
				</div>
			</div>
		</div>
		<!-- footer -->
		<%@include file="footer.jsp"%>

</body>
</html>