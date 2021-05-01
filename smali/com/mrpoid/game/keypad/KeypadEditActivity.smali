.class public Lcom/mrpoid/game/keypad/KeypadEditActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "KeypadEditActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/game/keypad/KeypadEditActivity$MyView;
    }
.end annotation


# instance fields
.field animIn:Landroid/view/animation/Animation;

.field animOut:Landroid/view/animation/Animation;

.field bShow:Z

.field mInvalidRect:Landroid/graphics/Rect;

.field mKeypad:Lcom/mrpoid/game/keypad/Keypad;

.field mLinearLayout:Landroid/widget/LinearLayout;

.field mOpacitySeekBar:Landroid/widget/SeekBar;

.field mOriCheckBox:Landroid/widget/CheckBox;

.field mTextView:Landroid/widget/TextView;

.field mTogImageView:Landroid/widget/ImageView;

.field rotaLeft:Landroid/view/animation/Animation;

.field rotaRight:Landroid/view/animation/Animation;

.field view:Lcom/mrpoid/game/keypad/KeypadEditActivity$MyView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mInvalidRect:Landroid/graphics/Rect;

    return-void
.end method

.method private saveKeyboard()V
    .locals 2

    const/4 v0, 0x0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mKeypad:Lcom/mrpoid/game/keypad/Keypad;

    invoke-virtual {v1}, Lcom/mrpoid/game/keypad/Keypad;->saveLayout()V

    const-string v1, "\u4fdd\u5b58\u6210\u529f\uff01"

    .line 180
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 182
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "\u4fdd\u5b58\u5931\u8d25\uff01"

    .line 183
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->animOut:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->animIn:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 97
    iget-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 72
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/mrpoid/R$id;->checkBox1:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 74
    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keypad/KeypadEditActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    sget v0, Lcom/mrpoid/R$id;->checkBox2:I

    if-ne p1, v0, :cond_2

    .line 78
    iget-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mKeypad:Lcom/mrpoid/game/keypad/Keypad;

    if-eqz p2, :cond_1

    const/4 v2, 0x2

    :cond_1
    invoke-virtual {p1, v2}, Lcom/mrpoid/game/keypad/Keypad;->setMode(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/mrpoid/R$id;->button1:I

    if-ne v0, v1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/mrpoid/game/keypad/KeypadEditActivity;->saveKeyboard()V

    goto :goto_2

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/mrpoid/R$id;->togBtn:I

    if-ne p1, v0, :cond_3

    .line 87
    iget-boolean p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->bShow:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->bShow:Z

    .line 89
    iget-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mTogImageView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->bShow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->rotaRight:Landroid/view/animation/Animation;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->rotaLeft:Landroid/view/animation/Animation;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    iget-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->bShow:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->animIn:Landroid/view/animation/Animation;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->animOut:Landroid/view/animation/Animation;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 114
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    sget p1, Lcom/mrpoid/R$layout;->activity_keypad:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keypad/KeypadEditActivity;->setContentView(I)V

    const p1, 0x10a0002

    .line 120
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->animIn:Landroid/view/animation/Animation;

    .line 121
    iget-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->animIn:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const p1, 0x10a0003

    .line 122
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->animOut:Landroid/view/animation/Animation;

    .line 123
    iget-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->animOut:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 124
    sget p1, Lcom/mrpoid/R$anim;->rota_left:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->rotaLeft:Landroid/view/animation/Animation;

    .line 125
    iget-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->rotaLeft:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 126
    sget p1, Lcom/mrpoid/R$anim;->rota_right:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->rotaRight:Landroid/view/animation/Animation;

    .line 127
    iget-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->rotaRight:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 129
    sget p1, Lcom/mrpoid/R$id;->seekBar1:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keypad/KeypadEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 131
    sget p1, Lcom/mrpoid/R$id;->seekBar2:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keypad/KeypadEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mOpacitySeekBar:Landroid/widget/SeekBar;

    .line 132
    iget-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mOpacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 135
    sget p1, Lcom/mrpoid/R$id;->checkBox1:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keypad/KeypadEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mOriCheckBox:Landroid/widget/CheckBox;

    .line 136
    invoke-virtual {p0}, Lcom/mrpoid/game/keypad/KeypadEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 137
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v1, 0x1

    if-le v0, p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mOriCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mOriCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    sget p1, Lcom/mrpoid/R$id;->checkBox2:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keypad/KeypadEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    sget p1, Lcom/mrpoid/R$id;->button1:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keypad/KeypadEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    sget p1, Lcom/mrpoid/R$id;->linerLayout1:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keypad/KeypadEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 146
    sget p1, Lcom/mrpoid/R$id;->togBtn:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keypad/KeypadEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iput-boolean v1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->bShow:Z

    .line 149
    sget p1, Lcom/mrpoid/R$id;->imageView1:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keypad/KeypadEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mTogImageView:Landroid/widget/ImageView;

    .line 151
    sget p1, Lcom/mrpoid/R$id;->textView1:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keypad/KeypadEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mTextView:Landroid/widget/TextView;

    .line 152
    iget-object p1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mInvalidRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 154
    sget p1, Lcom/mrpoid/R$id;->root:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/game/keypad/KeypadEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 155
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 156
    new-instance v1, Lcom/mrpoid/game/keypad/KeypadEditActivity$MyView;

    invoke-direct {v1, p0, p0}, Lcom/mrpoid/game/keypad/KeypadEditActivity$MyView;-><init>(Lcom/mrpoid/game/keypad/KeypadEditActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->view:Lcom/mrpoid/game/keypad/KeypadEditActivity$MyView;

    .line 157
    iget-object v1, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->view:Lcom/mrpoid/game/keypad/KeypadEditActivity$MyView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/mrpoid/game/keypad/KeypadEditActivity;->saveKeyboard()V

    .line 191
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 171
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 173
    invoke-static {p0}, Lcom/edroid/common/utils/SdkUtils;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 58
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p3

    sget v0, Lcom/mrpoid/R$id;->seekBar1:I

    if-ne p3, v0, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p1

    sget p3, Lcom/mrpoid/R$id;->seekBar2:I

    if-ne p1, p3, :cond_3

    const/16 p1, 0xff

    const/16 p3, 0xa

    if-ge p2, p3, :cond_1

    const/16 p1, 0xa

    goto :goto_0

    :cond_1
    if-le p2, p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, p2

    .line 66
    :goto_0
    iget-object p2, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mKeypad:Lcom/mrpoid/game/keypad/Keypad;

    invoke-virtual {p2, p1}, Lcom/mrpoid/game/keypad/Keypad;->setOpacity(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 164
    iget-object v0, p0, Lcom/mrpoid/game/keypad/KeypadEditActivity;->mKeypad:Lcom/mrpoid/game/keypad/Keypad;

    invoke-virtual {v0}, Lcom/mrpoid/game/keypad/Keypad;->foceReDraw()V

    .line 166
    invoke-static {p0}, Lcom/edroid/common/utils/SdkUtils;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
