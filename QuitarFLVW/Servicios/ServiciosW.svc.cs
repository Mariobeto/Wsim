using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;
using QuitarFLVW.Logic;

namespace QuitarFLVW
{
    [ServiceContract(Namespace = "http://wsim",
         SessionMode = SessionMode.Allowed)]
    [AspNetCompatibilityRequirements(
        RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class ServiciosW
    {
        // To use HTTP GET, add [WebGet] attribute. (Default ResponseFormat is WebMessageFormat.Json)
        // To create an operation that returns XML,
        //     add [WebGet(ResponseFormat=WebMessageFormat.Xml)],
        //     and include the following line in the operation body:
        //         WebOperationContext.Current.OutgoingResponse.ContentType = "text/xml";
        [OperationContract]
        public bool DoMission()
        {
            bool YaRealizoMision = Metodos.DoMission();
            if (YaRealizoMision)
                return true;
            else
                return false;
        }

        // Add more operations here and mark them with [OperationContract]
    }
}
