.class public Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity2.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/app/SettingsActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralPreferenceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 138
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    sget p1, Lcom/mrpoid/R$xml;->settings2:I

    invoke-virtual {p0, p1}, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;->addPreferencesFromResource(I)V

    const/4 p1, 0x1

    .line 141
    invoke-virtual {p0, p1}, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    const-string v0, "memSize"

    .line 150
    invoke-virtual {p0, v0}, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/mrpoid/app/SettingsActivity2;->access$000(Landroid/preference/Preference;)V

    const-string v0, "fps"

    .line 154
    invoke-virtual {p0, v0}, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/mrpoid/app/SettingsActivity2;->access$000(Landroid/preference/Preference;)V

    const-string v0, "fontType"

    .line 156
    invoke-virtual {p0, v0}, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/mrpoid/app/SettingsActivity2;->access$000(Landroid/preference/Preference;)V

    const-string v0, "scaleMode"

    .line 157
    invoke-virtual {p0, v0}, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lcom/mrpoid/app/SettingsActivity2;->access$000(Landroid/preference/Preference;)V

    const-string v0, "version"

    .line 159
    invoke-virtual {p0, v0}, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 162
    sget v2, Lcom/mrpoid/R$string;->version_summery:I

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v1, p1, v3

    invoke-virtual {p0, v2, p1}, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :catch_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://m.ejplay.com:8001/mrp/change.html"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-string p1, "keypadLayout"

    .line 167
    invoke-virtual {p0, p1}, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/mrpoid/game/keypad/KeypadEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-string p1, "about"

    .line 169
    invoke-virtual {p0, p1}, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://m.ejplay.com:8001/mrp/about.html"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-string p1, "help"

    .line 170
    invoke-virtual {p0, p1}, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://m.ejplay.com:8001/mrp/help.html"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/mrpoid/app/SettingsActivity2$GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 180
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
