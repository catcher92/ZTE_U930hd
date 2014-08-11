.class public final Lleadcore/dcm/DataConnectivityHelper$ApnSetting;
.super Ljava/lang/Object;
.source "DataConnectivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleadcore/dcm/DataConnectivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApnSetting"
.end annotation


# instance fields
.field apn:Ljava/lang/String;

.field id:I

.field mcc:Ljava/lang/String;

.field mmsPort:Ljava/lang/String;

.field mmsProxy:Ljava/lang/String;

.field mmsc:Ljava/lang/String;

.field mnc:Ljava/lang/String;

.field name:Ljava/lang/String;

.field password:Ljava/lang/String;

.field port:Ljava/lang/String;

.field proxy:Ljava/lang/String;

.field server:Ljava/lang/String;

.field type:Ljava/lang/String;

.field user:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "apn"
    .parameter "proxy"
    .parameter "port"
    .parameter "user"
    .parameter "password"
    .parameter "server"
    .parameter "mmsc"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "mcc"
    .parameter "mnc"
    .parameter "type"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->id:I

    .line 83
    iput-object p2, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->name:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->apn:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->proxy:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->port:Ljava/lang/String;

    .line 87
    iput-object p6, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->user:Ljava/lang/String;

    .line 88
    iput-object p7, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->password:Ljava/lang/String;

    .line 89
    iput-object p8, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->server:Ljava/lang/String;

    .line 90
    iput-object p9, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->mmsc:Ljava/lang/String;

    .line 91
    iput-object p10, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 92
    iput-object p11, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->mmsPort:Ljava/lang/String;

    .line 93
    iput-object p12, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->mcc:Ljava/lang/String;

    .line 94
    iput-object p13, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->mnc:Ljava/lang/String;

    .line 95
    iput-object p14, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->type:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, sb:Ljava/lang/StringBuilder;
    iget v1, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->mcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->mnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lleadcore/dcm/DataConnectivityHelper$ApnSetting;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
