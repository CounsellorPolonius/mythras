.class public Lcom/mrpoid/view/PathPreference;
.super Landroid/preference/Preference;
.source "PathPreference.java"


# instance fields
.field private defDir:Ljava/lang/String;

.field private defRoot:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    return-void
.end method

.method public setDefDir(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mrpoid/view/PathPreference;->defDir:Ljava/lang/String;

    return-void
.end method

.method public setDefRoot(Ljava/lang/String;)V
    .locals 2

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-eq v0, v1, :cond_0

    .line 26
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/mrpoid/view/PathPreference;->defRoot:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/mrpoid/view/PathPreference;->persistString(Ljava/lang/String;)Z

    .line 50
    invoke-virtual {p0, p1}, Lcom/mrpoid/view/PathPreference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method
