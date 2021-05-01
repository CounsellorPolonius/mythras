.class public Lcom/thirdparty/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final NS:Ljava/lang/String; = "http://androidemu.com/apk/res/android"


# instance fields
.field private maxValue:I

.field private minValue:I

.field private newValue:I

.field private oldValue:I

.field private seekBar:Landroid/widget/SeekBar;

.field private valueView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "http://androidemu.com/apk/res/android"

    const-string v0, "minValue"

    const/4 v1, 0x0

    .line 27
    invoke-interface {p2, p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/thirdparty/SeekBarPreference;->minValue:I

    const-string p1, "http://androidemu.com/apk/res/android"

    const-string v0, "maxValue"

    const/16 v1, 0x64

    .line 28
    invoke-interface {p2, p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/thirdparty/SeekBarPreference;->maxValue:I

    .line 30
    sget p1, Lcom/mrpoid/R$layout;->seekbar_dialog:I

    invoke-virtual {p0, p1}, Lcom/thirdparty/SeekBarPreference;->setDialogLayoutResource(I)V

    const p1, 0x104000a

    .line 31
    invoke-virtual {p0, p1}, Lcom/thirdparty/SeekBarPreference;->setPositiveButtonText(I)V

    const/high16 p1, 0x1040000

    .line 32
    invoke-virtual {p0, p1}, Lcom/thirdparty/SeekBarPreference;->setNegativeButtonText(I)V

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    .line 37
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 39
    iget v0, p0, Lcom/thirdparty/SeekBarPreference;->newValue:I

    iget v1, p0, Lcom/thirdparty/SeekBarPreference;->minValue:I

    if-ge v0, v1, :cond_0

    .line 40
    iget v0, p0, Lcom/thirdparty/SeekBarPreference;->minValue:I

    iput v0, p0, Lcom/thirdparty/SeekBarPreference;->newValue:I

    .line 41
    :cond_0
    iget v0, p0, Lcom/thirdparty/SeekBarPreference;->newValue:I

    iget v1, p0, Lcom/thirdparty/SeekBarPreference;->maxValue:I

    if-le v0, v1, :cond_1

    .line 42
    iget v0, p0, Lcom/thirdparty/SeekBarPreference;->maxValue:I

    iput v0, p0, Lcom/thirdparty/SeekBarPreference;->newValue:I

    .line 44
    :cond_1
    sget v0, Lcom/mrpoid/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/thirdparty/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    .line 45
    iget-object v0, p0, Lcom/thirdparty/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/thirdparty/SeekBarPreference;->maxValue:I

    iget v2, p0, Lcom/thirdparty/SeekBarPreference;->minValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 46
    iget-object v0, p0, Lcom/thirdparty/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/thirdparty/SeekBarPreference;->newValue:I

    iget v2, p0, Lcom/thirdparty/SeekBarPreference;->minValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 47
    iget-object v0, p0, Lcom/thirdparty/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/thirdparty/SeekBarPreference;->newValue:I

    iget v2, p0, Lcom/thirdparty/SeekBarPreference;->minValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 48
    iget-object v0, p0, Lcom/thirdparty/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 50
    sget v0, Lcom/mrpoid/R$id;->value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/thirdparty/SeekBarPreference;->valueView:Landroid/widget/TextView;

    .line 51
    iget-object p1, p0, Lcom/thirdparty/SeekBarPreference;->valueView:Landroid/widget/TextView;

    iget v0, p0, Lcom/thirdparty/SeekBarPreference;->newValue:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-nez p1, :cond_0

    .line 71
    iget p1, p0, Lcom/thirdparty/SeekBarPreference;->oldValue:I

    iput p1, p0, Lcom/thirdparty/SeekBarPreference;->newValue:I

    goto :goto_0

    .line 73
    :cond_0
    iget p1, p0, Lcom/thirdparty/SeekBarPreference;->newValue:I

    iput p1, p0, Lcom/thirdparty/SeekBarPreference;->oldValue:I

    .line 74
    iget p1, p0, Lcom/thirdparty/SeekBarPreference;->newValue:I

    invoke-virtual {p0, p1}, Lcom/thirdparty/SeekBarPreference;->persistInt(I)Z

    :goto_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 56
    iget p1, p0, Lcom/thirdparty/SeekBarPreference;->minValue:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/thirdparty/SeekBarPreference;->newValue:I

    .line 57
    iget-object p1, p0, Lcom/thirdparty/SeekBarPreference;->valueView:Landroid/widget/TextView;

    iget p2, p0, Lcom/thirdparty/SeekBarPreference;->newValue:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 87
    invoke-virtual {p0, p1}, Lcom/thirdparty/SeekBarPreference;->getPersistedInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/thirdparty/SeekBarPreference;->oldValue:I

    .line 88
    iget p1, p0, Lcom/thirdparty/SeekBarPreference;->oldValue:I

    iput p1, p0, Lcom/thirdparty/SeekBarPreference;->newValue:I

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
