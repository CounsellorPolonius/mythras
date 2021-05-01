.class public Lcom/mrpoid/view/SeekPreference;
.super Landroid/preference/Preference;
.source "SeekPreference.java"


# instance fields
.field private seekBar:Landroid/widget/SeekBar;

.field private value:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget p1, Lcom/mrpoid/R$layout;->seekbar_preference:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/view/SeekPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    sget p1, Lcom/mrpoid/R$layout;->seekbar_preference:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/view/SeekPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 30
    sget v0, Lcom/mrpoid/R$id;->seekBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mrpoid/view/SeekPreference;->seekBar:Landroid/widget/SeekBar;

    .line 31
    sget v0, Lcom/mrpoid/R$id;->value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mrpoid/view/SeekPreference;->value:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/mrpoid/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 33
    invoke-virtual {p0}, Lcom/mrpoid/view/SeekPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p0, Lcom/mrpoid/view/SeekPreference;->value:Landroid/widget/TextView;

    const-string v0, "10"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lcom/mrpoid/view/SeekPreference;->value:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
