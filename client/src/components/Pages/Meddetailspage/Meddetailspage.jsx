// eslint-disable-next-line react-hooks/exhaustive-deps

import React, { useState, useContext, useEffect } from 'react';
import Medtab from './Medtab';
import { StateContext } from '../../../context/StateProvider';

import './meddetailspage.scss';

const Meddetailspage = (props) => {
  const { isAuth, user, userMedGroupArr } = useContext(StateContext);
  const [currentTab, setCurrentTab] = useState(-1);
  const [active, setActive] = useState(-1);
  const medGroupId = props.location.medGroupId;

  const handleClick = e => {
    setCurrentTab(e);
    setActive(e);
  };

  // clicking History from Mypage selects correct tab
  useEffect(() => 
    userMedGroupArr.forEach((medGroupItem, i) => {
      if (medGroupId === medGroupItem.id) handleClick(i)
    }),
  []);

  return (
    <div className='meddetailspage'>

      <h2>Medication Compliance History</h2>
      <div className="tab">
        {userMedGroupArr.map((medGroupItem, i) => (
          <button
            key={medGroupItem.name}
            className={active === i ? 'active' : ''}
            onClick={() => handleClick(i)}
          >{medGroupItem.name}</button>
          ))
        }
      </div>

      <div className="tabcontent">
        {currentTab !== -1 &&
          <Medtab
            medGroupObj={userMedGroupArr[currentTab]}
            tab={active}
          />
        }
      </div>

    </div>
  );
};

export default Meddetailspage;