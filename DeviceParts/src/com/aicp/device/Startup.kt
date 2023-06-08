/*
* Copyright (C) 2013 The OmniROM Project
* Copyright (C) 2020 The Android Ice Cold Project
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program. If not, see <http://www.gnu.org/licenses/>.
*
*/
package com.aicp.device

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent

class Startup : BroadcastReceiver() {
    override fun onReceive(context: Context, bootintent: Intent?) {
        restoreAfterUserSwitch(context)
        val serviceIntent = Intent(context, HtcGestureService::class.java)
        context.startService(serviceIntent)
    }

        fun restoreAfterUserSwitch(context: Context) {
            VibratorStrengthPreference.Companion.restore(context)
            BacklightDimmerPreference.Companion.restore(context)
            HeadphoneGainPreference.restore(context)
        }
    }
