.class Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;
.super Ljava/lang/Object;
.source "ZTEPrivacyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/privacy/ZTEPrivacyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionEventRecord"
.end annotation


# instance fields
.field public permission:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

.field public timeStamp:J


# direct methods
.method public constructor <init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter "permission"
    .parameter "timeStamp"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p2, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;->permission:Ljava/lang/String;

    .line 267
    iput-wide p3, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$PermissionEventRecord;->timeStamp:J

    .line 268
    return-void
.end method
