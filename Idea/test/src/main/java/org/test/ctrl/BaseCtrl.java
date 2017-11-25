package org.test.ctrl;

import java.util.HashMap;
import java.util.Map;

/**
 * Author:YoYo_D
 * Created by apple on 2017/10/25.
 */
public class BaseCtrl {

    private static final String MAP_INFO = "info";
    private static final String MAP_DATA = "data";
    private static final String MAP_STATUS = "status";
    public static Map<String, Object> mResult = new HashMap<String, Object>();

    protected Map<String, Object> _clearRes() {
        if (mResult.size() > 0) {
            mResult.clear();
        }
        return mResult;
    }

    protected Map<String, Object> _setInfo(String msg) {
        if (mResult.containsKey(MAP_INFO)) {
            mResult.remove(MAP_INFO);
        }
        mResult.put(MAP_INFO, msg);
        return mResult;
    }

    protected Map<String, Object> _setData(Object data) {
        if (mResult.containsKey(MAP_DATA)) {
            mResult.remove(MAP_DATA);
        }
        mResult.put(MAP_DATA, data);
        return mResult;
    }

    protected Map<String, Object> _setStatus(CODE_STATUS status) {
        if (mResult.containsKey(MAP_STATUS)) {
            mResult.remove(MAP_STATUS);
        }
        mResult.put(MAP_STATUS, status.getValue());
        return mResult;
    }

    public enum CODE_STATUS {
        OK(200), CLIENT_ERROR(100), SERVER_ERROR(500), NORMAL(201);

        private int mValues;

        private CODE_STATUS(int i) {
            this.mValues = i;
        }

        public int getValue() {
            return mValues;
        }

    }

}
