.class final Lcom/cyanogenmod/trebuchet/LauncherModel$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/cyanogenmod/trebuchet/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

.field final synthetic val$itemId:J

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;JLcom/cyanogenmod/trebuchet/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$values:Landroid/content/ContentValues;

    iput-wide p4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$itemId:J

    iput-object p6, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iput-object p7, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, -0x64

    const-wide/16 v7, -0x65

    const/4 v5, 0x0

    .line 322
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 325
    sget-object v3, Lcom/cyanogenmod/trebuchet/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 326
    :try_start_0
    iget-wide v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$itemId:J

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget-object v6, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v4, v5, v2, v6}, Lcom/cyanogenmod/trebuchet/LauncherModel;->checkItemInfoLocked(JLcom/cyanogenmod/trebuchet/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 328
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget-wide v4, v2, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    cmp-long v2, v4, v9

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget-wide v4, v2, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    cmp-long v2, v4, v7

    if-eqz v2, :cond_0

    .line 331
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget-wide v4, v4, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " container being set to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$item:Lcom/cyanogenmod/trebuchet/ItemInfo;

    iget-wide v4, v4, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", not in the list of folders"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, msg:Ljava/lang/String;
    const-string v2, "Trebuchet.LauncherModel"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {}, Lcom/cyanogenmod/trebuchet/Launcher;->dumpDebugLogsToConsole()V

    .line 344
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    iget-wide v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$3;->val$itemId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/ItemInfo;

    .line 345
    .local v0, modelItem:Lcom/cyanogenmod/trebuchet/ItemInfo;
    if-eqz v0, :cond_3

    iget-wide v4, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    cmp-long v2, v4, v9

    if-eqz v2, :cond_1

    iget-wide v4, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->container:J

    cmp-long v2, v4, v7

    if-nez v2, :cond_3

    .line 347
    :cond_1
    iget v2, v0, Lcom/cyanogenmod/trebuchet/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 362
    :cond_2
    :goto_0
    monitor-exit v3

    .line 363
    return-void

    .line 352
    :pswitch_0
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 353
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 362
    .end local v0           #modelItem:Lcom/cyanogenmod/trebuchet/ItemInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 360
    .restart local v0       #modelItem:Lcom/cyanogenmod/trebuchet/ItemInfo;
    :cond_3
    :try_start_1
    sget-object v2, Lcom/cyanogenmod/trebuchet/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
