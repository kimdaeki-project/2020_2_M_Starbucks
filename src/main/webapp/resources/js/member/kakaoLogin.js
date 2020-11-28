		/* 카카오 계정 로그인 */
		Kakao.Auth.createLoginButton({
			container: '#kakao_login',
			success: function(authObj) {
				Kakao.API.request({
					url: '/v2/user/me',
					success: function(res) {
						//alert(JSON.stringify(res));
						//var data = JSON.stringify(res);
						var data = JSON.parse(JSON.stringify(res));
						var info = data.id+','+data.kakao_account.email+','+data.kakao_account.gender;
						console.log(info);
						
						$.ajax({
							url: './kakaoLogin',
							dataType: 'json',
							data : info,
							method: 'post',
							contentType: 'application/x-www-form-urlencoded; charset=euc-kr',
							success : function(data) {
								location.href="./memberJoin2";
							}
						});
					},
					fail: function(error) {
						alert(
							'login success, but failed to request user information: ' +
							JSON.stringify(error)
						)
					},
				})
			},
			fail: function(err) {
				alert('failed to login: ' + JSON.stringify(err))
			},
		})
		/* 카카오 계정 로그인 end */		