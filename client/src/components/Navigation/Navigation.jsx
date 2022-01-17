import React, { useContext } from 'react';
import { StateContext } from 'context/StateProvider';

import Logo from 'components/Logo/Logo';
import CustomLink from 'components/CustomLink/CustomLink';
import SignOutButton from 'components/SignOutButton/SignOutButton';

import './navigation.scss';

const Navigation = () => {
  const { isAuth } = useContext(StateContext);
  return (
    <div className='nav'>
      <Logo />

      <div className='link-group'>
        {isAuth && (
          <>
            <CustomLink urlTo='/user-search' linkName='Search' />
            <CustomLink urlTo='/mypage' linkName='My page' />
            <CustomLink urlTo='/bond' linkName='My bond' />
            <SignOutButton />
          </>
        )}
      </div>
    </div>
  );
};

export default Navigation;
