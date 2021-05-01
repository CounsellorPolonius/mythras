.class public final Lcom/edroid/common/utils/SmsUtil;
.super Ljava/lang/Object;
.source "SmsUtil.java"


# static fields
.field public static final SMS_URI_ALL:Ljava/lang/String; = "content://sms/"

.field public static final SMS_URI_DRAFT:Ljava/lang/String; = "content://sms/draft"

.field public static final SMS_URI_INBOX:Ljava/lang/String; = "content://sms/inbox"

.field public static final SMS_URI_SEND:Ljava/lang/String; = "content://sms/sent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-eqz p0, :cond_3

    .line 73
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "service_center"

    .line 74
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 77
    new-instance v2, Lcom/edroid/common/utils/Frequency;

    invoke-direct {v2}, Lcom/edroid/common/utils/Frequency;-><init>()V

    const/4 v3, 0x0

    .line 81
    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 82
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 83
    invoke-virtual {v2, v4}, Lcom/edroid/common/utils/Frequency;->addStatistics(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    .line 86
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x32

    if-lt v3, v4, :cond_0

    .line 88
    :cond_2
    invoke-virtual {v2}, Lcom/edroid/common/utils/Frequency;->getMaxValueItem()Lcom/edroid/common/utils/Frequency$Entiry;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/edroid/common/utils/Frequency$Entiry;->getKey()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public static getSms(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 40
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "date DESC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    .line 39
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static getSmsCenter(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "android.permission.READ_SMS"

    .line 53
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "content://sms/inbox"

    const/4 v1, 0x1

    .line 56
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "service_center"

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/edroid/common/utils/SmsUtil;->getSms(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0}, Lcom/edroid/common/utils/SmsUtil;->doCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
