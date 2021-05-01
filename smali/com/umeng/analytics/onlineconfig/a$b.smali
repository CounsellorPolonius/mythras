.class public Lcom/umeng/analytics/onlineconfig/a$b;
.super Lu/aly/bw;
.source "OnlineConfigAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/onlineconfig/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/analytics/onlineconfig/a;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;

    invoke-direct {p0}, Lu/aly/bw;-><init>()V

    .line 125
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->a:Landroid/content/Context;

    return-void
.end method

.method private b()V
    .locals 5

    .line 146
    new-instance v0, Lcom/umeng/analytics/onlineconfig/a$a;

    iget-object v1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;

    iget-object v2, p0, Lcom/umeng/analytics/onlineconfig/a$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/onlineconfig/a$a;-><init>(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;)V

    .line 147
    const-class v1, Lcom/umeng/analytics/onlineconfig/b;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/analytics/onlineconfig/a$b;->a(Lu/aly/bx;Ljava/lang/Class;)Lu/aly/by;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/onlineconfig/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;

    invoke-static {v0, v1}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/a;Lorg/json/JSONObject;)V

    return-void

    .line 158
    :cond_0
    iget-boolean v2, v0, Lcom/umeng/analytics/onlineconfig/b;->b:Z

    if-eqz v2, :cond_2

    .line 160
    iget-object v1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;

    invoke-static {v1}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/a;)Lcom/umeng/analytics/onlineconfig/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;

    invoke-static {v1}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/a;)Lcom/umeng/analytics/onlineconfig/c;

    move-result-object v1

    iget v2, v0, Lcom/umeng/analytics/onlineconfig/b;->c:I

    iget v3, v0, Lcom/umeng/analytics/onlineconfig/b;->d:I

    int-to-long v3, v3

    invoke-interface {v1, v2, v3, v4}, Lcom/umeng/analytics/onlineconfig/c;->a(IJ)V

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;

    iget-object v2, p0, Lcom/umeng/analytics/onlineconfig/a$b;->a:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V

    .line 166
    iget-object v1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;

    iget-object v2, p0, Lcom/umeng/analytics/onlineconfig/a$b;->a:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/onlineconfig/a;->b(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V

    .line 167
    iget-object v1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;

    iget-object v0, v0, Lcom/umeng/analytics/onlineconfig/b;->a:Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/a;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;

    invoke-static {v0, v1}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/a;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method private c()Z
    .locals 14

    .line 175
    iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "MobclickAgent"

    const-string v2, "Appkey is missing ,Please check AndroidManifest.xml"

    .line 176
    invoke-static {v0, v2}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 180
    :cond_0
    sget-boolean v0, Lu/aly/br;->a:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bq;->w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    if-nez v0, :cond_2

    .line 184
    iget-object v5, p0, Lcom/umeng/analytics/onlineconfig/a$b;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/analytics/h;->j()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "last_test_t"

    .line 185
    invoke-interface {v5, v6, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v10, v8, v6

    const-string v6, "oc_req_i"

    const-wide/32 v12, 0x927c0

    .line 187
    invoke-interface {v5, v6, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v12, v10, v6

    if-lez v12, :cond_2

    .line 188
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "last_test_t"

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-nez v5, :cond_3

    return v1

    .line 195
    :cond_3
    new-instance v0, Lcom/umeng/analytics/onlineconfig/a$c;

    iget-object v5, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;

    iget-object v6, p0, Lcom/umeng/analytics/onlineconfig/a$b;->a:Landroid/content/Context;

    invoke-direct {v0, v5, v6}, Lcom/umeng/analytics/onlineconfig/a$c;-><init>(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;)V

    .line 196
    const-class v5, Lcom/umeng/analytics/onlineconfig/a$d;

    invoke-virtual {p0, v0, v5}, Lcom/umeng/analytics/onlineconfig/a$b;->a(Lu/aly/bx;Ljava/lang/Class;)Lu/aly/by;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/onlineconfig/a$d;

    if-nez v0, :cond_4

    return v1

    .line 202
    :cond_4
    iget-object v5, p0, Lcom/umeng/analytics/onlineconfig/a$b;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/analytics/h;->j()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 205
    iget-wide v6, v0, Lcom/umeng/analytics/onlineconfig/a$d;->a:J

    const-string v8, "oc_mdf_t"

    invoke-interface {v5, v8, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_5

    const/4 v1, 0x1

    .line 209
    :cond_5
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 210
    iget-wide v6, v0, Lcom/umeng/analytics/onlineconfig/a$d;->b:J

    cmp-long v8, v6, v3

    if-ltz v8, :cond_6

    const-string v6, "oc_req_i"

    .line 211
    iget-wide v7, v0, Lcom/umeng/analytics/onlineconfig/a$d;->b:J

    invoke-interface {v2, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 213
    :cond_6
    iget-wide v6, v0, Lcom/umeng/analytics/onlineconfig/a$d;->a:J

    cmp-long v8, v6, v3

    if-ltz v8, :cond_7

    const-string v6, "oc_mdf_told"

    const-string v7, "oc_mdf_t"

    .line 214
    invoke-interface {v5, v7, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-interface {v2, v6, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v3, "oc_mdf_t"

    .line 215
    iget-wide v4, v0, Lcom/umeng/analytics/onlineconfig/a$d;->a:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 217
    :cond_7
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v1
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 3

    .line 131
    :try_start_0
    invoke-direct {p0}, Lcom/umeng/analytics/onlineconfig/a$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/umeng/analytics/onlineconfig/a$b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    iget-object v1, p0, Lcom/umeng/analytics/onlineconfig/a$b;->b:Lcom/umeng/analytics/onlineconfig/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/a;Lorg/json/JSONObject;)V

    const-string v1, "MobclickAgent"

    const-string v2, "request online config error"

    .line 137
    invoke-static {v1, v2, v0}, Lu/aly/br;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method
