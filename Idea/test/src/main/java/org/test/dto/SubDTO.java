package org.test.dto;

import lombok.Data;

/**
 * sub:entity
 * Created by apple on 2017/11/16.
 */
@Data
public class SubDTO {

    private int mSubId;
    private int mDeparId;
    private String mSubName;
    private String mSubDesc;
    private String mSubPalce;
    private int mSubSelected;
    private int mSubmount;
    private String mSubDetail;

    public String getmSubDetail() {
        return mSubDetail;
    }

    public void setmSubDetail(String mSubDetail) {
        this.mSubDetail = mSubDetail;
    }

    public int getmSubId() {
        return mSubId;
    }

    public void setmSubId(int mSubId) {
        this.mSubId = mSubId;
    }

    public int getmDeparId() {
        return mDeparId;
    }

    public void setmDeparId(int mDeparId) {
        this.mDeparId = mDeparId;
    }

    public String getmSubName() {
        return mSubName;
    }

    public void setmSubName(String mSubName) {
        this.mSubName = mSubName;
    }

    public String getmSubDesc() {
        return mSubDesc;
    }

    public void setmSubDesc(String mSubDesc) {
        this.mSubDesc = mSubDesc;
    }

    public String getmSubPalce() {
        return mSubPalce;
    }

    public void setmSubPalce(String mSubPalce) {
        this.mSubPalce = mSubPalce;
    }

    public int getmSubSelected() {
        return mSubSelected;
    }

    public void setmSubSelected(int mSubSelected) {
        this.mSubSelected = mSubSelected;
    }

    public int getmSubmount() {
        return mSubmount;
    }

    public void setmSubmount(int mSubmount) {
        this.mSubmount = mSubmount;
    }


}
