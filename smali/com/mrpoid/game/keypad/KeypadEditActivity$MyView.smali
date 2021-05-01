.class public Lcom/mrpoid/game/keypad/KeypadEditActivity$MyView;
.super Landroid/view/View;
.source "KeypadEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/game/keypad/KeypadEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/game/keypad/KeypadEditActivity;


# direct methods
.method public constructor <init>(Lcom/mrpoid/game/keypad/KeypadEditActivity;Landroid/content/Context;)V
    .locals 2

    .line 195
    iput-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity$MyView;->this$0:Lcom/mrpoid/game/keypad/KeypadEditActivity;

    .line 196
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 198
    new-instance v0, Lcom/mrpoid/game/keypad/Keypad;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/mrpoid/game/keypad/Keypad;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p1, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mKeypad:Lcom/mrpoid/game/keypad/Keypad;

    .line 199
    iget-object p2, p1, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mKeypad:Lcom/mrpoid/game/keypad/Keypad;

    invoke-virtual {p2, p0}, Lcom/mrpoid/game/keypad/Keypad;->attachView(Landroid/view/View;)V

    .line 200
    iget-object p2, p1, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mKeypad:Lcom/mrpoid/game/keypad/Keypad;

    invoke-virtual {p2, v1}, Lcom/mrpoid/game/keypad/Keypad;->setMode(I)V

    .line 201
    iget-object p2, p1, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mOpacitySeekBar:Landroid/widget/SeekBar;

    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 203
    iget-object p1, p1, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mKeypad:Lcom/mrpoid/game/keypad/Keypad;

    invoke-virtual {p1}, Lcom/mrpoid/game/keypad/Keypad;->reset()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 216
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 218
    iget-object v0, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity$MyView;->this$0:Lcom/mrpoid/game/keypad/KeypadEditActivity;

    iget-object v0, v0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mKeypad:Lcom/mrpoid/game/keypad/Keypad;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mrpoid/game/keypad/Keypad;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 210
    iget-object p3, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity$MyView;->this$0:Lcom/mrpoid/game/keypad/KeypadEditActivity;

    iget-object p3, p3, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mKeypad:Lcom/mrpoid/game/keypad/Keypad;

    invoke-virtual {p3, p1, p2}, Lcom/mrpoid/game/keypad/Keypad;->onViewSizeChanged(II)V

    .line 211
    iget-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity$MyView;->this$0:Lcom/mrpoid/game/keypad/KeypadEditActivity;

    iget-object p1, p1, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mTextView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity$MyView;->this$0:Lcom/mrpoid/game/keypad/KeypadEditActivity;

    iget-object p2, p2, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity$MyView;->this$0:Lcom/mrpoid/game/keypad/KeypadEditActivity;

    iget-object v0, v0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mKeypad:Lcom/mrpoid/game/keypad/Keypad;

    invoke-virtual {v0, p1}, Lcom/mrpoid/game/keypad/Keypad;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
