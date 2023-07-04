package kopo.poly.service;

import kopo.poly.dto.UserInfoDTO;

public interface IUserInfoService {

    //회원가입
    int insertUserInfo(UserInfoDTO pDTO) throws Exception;
    //로그인
    UserInfoDTO getLogin(UserInfoDTO pDTO) throws Exception;
}
