.class public final Lcom/umeng/analytics/h;
.super Ljava/lang/Object;
.source "StoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/h$b;,
        Lcom/umeng/analytics/h$a;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/analytics/h; = null

.field private static b:Landroid/content/Context; = null

.field private static c:Ljava/lang/String; = null

.field private static e:J = 0x48190800L

.field private static f:J = 0x200000L

.field private static final g:Ljava/lang/String; = "mobclick_agent_user_"

.field private static final h:Ljava/lang/String; = "mobclick_agent_online_setting_"

.field private static final i:Ljava/lang/String; = "mobclick_agent_header_"

.field private static final j:Ljava/lang/String; = "mobclick_agent_update_"

.field private static final k:Ljava/lang/String; = "mobclick_agent_state_"

.field private static final l:Ljava/lang/String; = "mobclick_agent_cached_"


# instance fields
.field private d:Lcom/umeng/analytics/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/umeng/analytics/h$a;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/h$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/h;->d:Lcom/umeng/analytics/h$a;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/analytics/h;
    .locals 2

    const-class v0, Lcom/umeng/analytics/h;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/h;->a:Lcom/umeng/analytics/h;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/umeng/analytics/h;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/analytics/h;->a:Lcom/umeng/analytics/h;

    .line 39
    :cond_0
    sget-object p0, Lcom/umeng/analytics/h;->a:Lcom/umeng/analytics/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/io/File;)Z
    .locals 4

    .line 47
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 49
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-wide v2, Lcom/umeng/analytics/h;->f:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private n()Landroid/content/SharedPreferences;
    .locals 3

    .line 222
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobclick_agent_user_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private o()Ljava/lang/String;
    .locals 2

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mobclick_agent_header_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private p()Ljava/lang/String;
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mobclick_agent_cached_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/umeng/analytics/h;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oc_dc"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 3

    .line 152
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "umeng_net_report_policy"

    .line 155
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "umeng_net_report_interval"

    int-to-long v1, p2

    .line 156
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/umeng/analytics/h;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "au_p"

    .line 61
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "au_u"

    .line 62
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 3

    .line 188
    invoke-direct {p0}, Lcom/umeng/analytics/h;->p()Ljava/lang/String;

    move-result-object v0

    .line 190
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lu/aly/cd;->a(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MobclickAgent"

    .line 192
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 4

    .line 68
    invoke-direct {p0}, Lcom/umeng/analytics/h;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "au_p"

    const/4 v2, 0x0

    .line 69
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "au_u"

    .line 70
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 72
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    return-object v2

    :cond_0
    return-object v2
.end method

.method public b()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/umeng/analytics/h;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "au_p"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "au_u"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(I)V
    .locals 2

    if-lez p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/umeng/analytics/h;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oc_lt"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public b([B)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/umeng/analytics/h;->d:Lcom/umeng/analytics/h$a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/h$a;->a([B)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 137
    invoke-virtual {p0}, Lcom/umeng/analytics/h;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oc_ec"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public c()[I
    .locals 8

    .line 89
    invoke-virtual {p0}, Lcom/umeng/analytics/h;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x2

    .line 90
    new-array v1, v1, [I

    const-string v2, "umeng_net_report_policy"

    const/4 v3, -0x1

    .line 91
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_0

    const-string v2, "umeng_net_report_policy"

    .line 92
    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v6

    const-string v2, "umeng_net_report_interval"

    .line 93
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    aput v0, v1, v7

    goto :goto_0

    :cond_0
    const-string v2, "umeng_local_report_policy"

    .line 95
    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v6

    const-string v2, "umeng_local_report_interval"

    .line 96
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    aput v0, v1, v7

    :goto_0
    return-object v1
.end method

.method public d()I
    .locals 3

    .line 112
    invoke-virtual {p0}, Lcom/umeng/analytics/h;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "oc_dc"

    .line 114
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public d(I)I
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/umeng/analytics/h;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "oc_ec"

    .line 146
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return p1
.end method

.method public e()I
    .locals 3

    .line 129
    invoke-virtual {p0}, Lcom/umeng/analytics/h;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "oc_lt"

    .line 131
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public f()[B
    .locals 4

    .line 162
    invoke-direct {p0}, Lcom/umeng/analytics/h;->p()Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    invoke-static {v1}, Lcom/umeng/analytics/h;->a(Ljava/io/File;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-object v3

    .line 169
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v3

    .line 176
    :cond_1
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :try_start_1
    invoke-static {v0}, Lu/aly/cd;->b(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    invoke-static {v0}, Lu/aly/cd;->c(Ljava/io/InputStream;)V

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v0, v3

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v0, v3

    .line 179
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 181
    invoke-static {v0}, Lu/aly/cd;->c(Ljava/io/InputStream;)V

    return-object v3

    :catchall_1
    move-exception v1

    :goto_1
    invoke-static {v0}, Lu/aly/cd;->c(Ljava/io/InputStream;)V

    throw v1
.end method

.method public g()V
    .locals 2

    .line 197
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/umeng/analytics/h;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 198
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/umeng/analytics/h;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public h()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/umeng/analytics/h;->d:Lcom/umeng/analytics/h$a;

    invoke-virtual {v0}, Lcom/umeng/analytics/h$a;->a()Z

    move-result v0

    return v0
.end method

.method public i()Lcom/umeng/analytics/h$a;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/umeng/analytics/h;->d:Lcom/umeng/analytics/h$a;

    return-object v0
.end method

.method public j()Landroid/content/SharedPreferences;
    .locals 3

    .line 226
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobclick_agent_online_setting_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroid/content/SharedPreferences;
    .locals 3

    .line 230
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobclick_agent_header_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public l()Landroid/content/SharedPreferences;
    .locals 3

    .line 234
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobclick_agent_update_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public m()Landroid/content/SharedPreferences;
    .locals 3

    .line 238
    sget-object v0, Lcom/umeng/analytics/h;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobclick_agent_state_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/umeng/analytics/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
