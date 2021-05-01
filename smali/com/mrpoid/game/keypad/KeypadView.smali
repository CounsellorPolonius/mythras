.class public Lcom/mrpoid/game/keypad/KeypadView;
.super Landroid/view/View;
.source "KeypadView.java"


# instance fields
.field private keypad:Lcom/mrpoid/game/keypad/Keypad;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mrpoid/game/keypad/Keypad;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/mrpoid/game/keypad/KeypadView;->keypad:Lcom/mrpoid/game/keypad/Keypad;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 49
    iget-object v0, p0, Lcom/mrpoid/game/keypad/KeypadView;->keypad:Lcom/mrpoid/game/keypad/Keypad;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mrpoid/game/keypad/Keypad;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 43
    iget-object p3, p0, Lcom/mrpoid/game/keypad/KeypadView;->keypad:Lcom/mrpoid/game/keypad/Keypad;

    invoke-virtual {p3, p1, p2}, Lcom/mrpoid/game/keypad/Keypad;->onViewSizeChanged(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/mrpoid/game/keypad/KeypadView;->keypad:Lcom/mrpoid/game/keypad/Keypad;

    invoke-virtual {v0, p1}, Lcom/mrpoid/game/keypad/Keypad;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
