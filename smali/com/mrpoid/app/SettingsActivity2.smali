.class public Lcom/mrpoid/app/SettingsActivity2;
.super Lcom/mrpoid/app/AppCompatPreferenceActivity;
.source "SettingsActivity2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;
    }
.end annotation


# static fields
.field private static sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/mrpoid/app/SettingsActivity2$1;

    invoke-direct {v0}, Lcom/mrpoid/app/SettingsActivity2$1;-><init>()V

    sput-object v0, Lcom/mrpoid/app/SettingsActivity2;->sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/mrpoid/app/AppCompatPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/preference/Preference;)V
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/mrpoid/app/SettingsActivity2;->bindPreferenceSummaryToValue(Landroid/preference/Preference;)V

    return-void
.end method

.method private static bindPreferenceSummaryToValue(Landroid/preference/Preference;)V
    .locals 4

    .line 93
    sget-object v0, Lcom/mrpoid/app/SettingsActivity2;->sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    sget-object v0, Lcom/mrpoid/app/SettingsActivity2;->sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 99
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 100
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    return-void
.end method

.method private static isXLargeTablet(Landroid/content/Context;)Z
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setupActionBar()V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/mrpoid/app/SettingsActivity2;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 118
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 105
    invoke-super {p0, p1}, Lcom/mrpoid/app/AppCompatPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-direct {p0}, Lcom/mrpoid/app/SettingsActivity2;->setupActionBar()V

    .line 108
    invoke-virtual {p0}, Lcom/mrpoid/app/SettingsActivity2;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;

    invoke-direct {v0}, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;-><init>()V

    const v1, 0x1020002

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onIsMultiPane()Z
    .locals 1

    .line 127
    invoke-static {p0}, Lcom/mrpoid/app/SettingsActivity2;->isXLargeTablet(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
