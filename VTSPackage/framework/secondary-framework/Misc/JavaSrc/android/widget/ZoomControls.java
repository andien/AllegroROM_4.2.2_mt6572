// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AlphaAnimation;

// Referenced classes of package android.widget:
//            LinearLayout, ZoomButton

public class ZoomControls extends LinearLayout
{

    private final ZoomButton mZoomIn;
    private final ZoomButton mZoomOut;

    public ZoomControls(Context context)
    {
        this(context, null);
    }

    public ZoomControls(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setFocusable(false);
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x10900ed, this, true);
        mZoomIn = (ZoomButton)findViewById(0x10203bc);
        mZoomOut = (ZoomButton)findViewById(0x10203bb);
    }

    private void fade(int i, float f, float f1)
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(f, f1);
        alphaanimation.setDuration(500L);
        startAnimation(alphaanimation);
        setVisibility(i);
    }

    public boolean hasFocus()
    {
        return mZoomIn.hasFocus() || mZoomOut.hasFocus();
    }

    public void hide()
    {
        fade(8, 1.0F, 0.0F);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(accessibilityevent);
        accessibilityevent.setClassName(android/widget/ZoomControls.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilitynodeinfo)
    {
        super.onInitializeAccessibilityNodeInfo(accessibilitynodeinfo);
        accessibilitynodeinfo.setClassName(android/widget/ZoomControls.getName());
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return true;
    }

    public void setIsZoomInEnabled(boolean flag)
    {
        mZoomIn.setEnabled(flag);
    }

    public void setIsZoomOutEnabled(boolean flag)
    {
        mZoomOut.setEnabled(flag);
    }

    public void setOnZoomInClickListener(android.view.View.OnClickListener onclicklistener)
    {
        mZoomIn.setOnClickListener(onclicklistener);
    }

    public void setOnZoomOutClickListener(android.view.View.OnClickListener onclicklistener)
    {
        mZoomOut.setOnClickListener(onclicklistener);
    }

    public void setZoomSpeed(long l)
    {
        mZoomIn.setZoomSpeed(l);
        mZoomOut.setZoomSpeed(l);
    }

    public void show()
    {
        fade(0, 0.0F, 1.0F);
    }
}
